#!/usr/bin/env python3
"""Build RV_Forecasting_Report.docx from RV_Forecasting_Report.md in the house
style of the v5.2 proposal: navy title block and headings, justified body text,
shaded table headers, numbered display equations, captioned figures and
centred page numbers.

Usage:  python3 build_report.py          (needs pandoc on the PATH; the PDF
                                         also needs xelatex, e.g. MacTeX)

Markdown conventions understood here:
  * a display equation $$...$$ followed by a paragraph EQNUM(n) gets the
    number (n) right-aligned on the equation's line;
  * table column widths follow the dash counts in each pipe table's separator row.
"""
import os
import re
import shutil
import subprocess
import tempfile
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = os.path.join(HERE, "RV_Forecasting_Report.md")
OUT = os.path.join(HERE, "RV_Forecasting_Report.docx")
PDF = os.path.join(HERE, "RV_Forecasting_Report.pdf")

NAVY = "1F3864"
NAVY2 = "2E4A7D"
GREY = "595959"
HEAD_FILL = "E8EDF5"
RULE = "BFC5D0"
FONT = "Calibri"
TEXT_W = 10800            # US Letter 12240 twips minus 2 x 720 margins

W = 'xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"'


def rpr(size=None, bold=False, italic=False, color=None, font=None):
    s = ""
    if font:
        s += f'<w:rFonts w:ascii="{font}" w:hAnsi="{font}" w:eastAsia="{font}" w:cs="{font}"/>'
    if bold:
        s += "<w:b/><w:bCs/>"
    if italic:
        s += "<w:i/><w:iCs/>"
    if color:
        s += f'<w:color w:val="{color}"/>'
    if size:
        s += f'<w:sz w:val="{int(size*2)}"/><w:szCs w:val="{int(size*2)}"/>'
    return f"<w:rPr>{s}</w:rPr>" if s else ""


def pstyle(sid, name, based="Normal", nxt=None, ppr="", rp="", qformat=True, outline=None):
    o = f'<w:outlineLvl w:val="{outline}"/>' if outline is not None else ""
    return (f'<w:style w:type="paragraph" w:styleId="{sid}"><w:name w:val="{name}"/>'
            + (f'<w:basedOn w:val="{based}"/>' if based else "")
            + (f'<w:next w:val="{nxt}"/>' if nxt else "")
            + ("<w:qFormat/>" if qformat else "")
            + f"<w:pPr>{ppr}{o}</w:pPr>{rp}</w:style>")


def styles_xml():
    sp = lambda before, after, line=264: f'<w:spacing w:before="{before}" w:after="{after}" w:line="{line}" w:lineRule="auto"/>'
    border_bottom = f'<w:pBdr><w:bottom w:val="single" w:sz="18" w:space="8" w:color="{NAVY}"/></w:pBdr>'
    tbl_borders = "".join(f'<w:{e} w:val="single" w:sz="4" w:space="0" w:color="{RULE}"/>'
                          for e in ["top", "left", "bottom", "right", "insideH", "insideV"])
    s = [f'<?xml version="1.0" encoding="UTF-8" standalone="yes"?><w:styles {W}>',
         '<w:docDefaults><w:rPrDefault>' + rpr(10, font=FONT) +
         '</w:rPrDefault><w:pPrDefault><w:pPr>' + sp(0, 100) + '</w:pPr></w:pPrDefault></w:docDefaults>',
         pstyle("Normal", "Normal", based=None, ppr=sp(0, 100)),
         pstyle("BodyText", "Body Text", ppr='<w:jc w:val="both"/>' + sp(0, 110)),
         pstyle("FirstParagraph", "First Paragraph", based="BodyText", nxt="BodyText"),
         pstyle("Compact", "Compact", based="BodyText", ppr='<w:jc w:val="left"/>' + sp(0, 40)),
         pstyle("Title", "Title", nxt="Subtitle", ppr='<w:jc w:val="center"/>' + sp(0, 40, 240),
                rp=rpr(20, bold=True, color=NAVY)),
         pstyle("Subtitle", "Subtitle", nxt="Author", ppr='<w:jc w:val="center"/>' + sp(0, 60, 240),
                rp=rpr(12, italic=True, color=GREY)),
         pstyle("Author", "Author", ppr='<w:jc w:val="center"/>' + sp(0, 20, 240), rp=rpr(10)),
         pstyle("Date", "Date", ppr='<w:jc w:val="center"/>' + border_bottom + sp(0, 260, 240), rp=rpr(10)),
         pstyle("AbstractTitle", "Abstract Title", nxt="Abstract", ppr=sp(0, 60) + '<w:keepNext/>',
                rp=rpr(11, bold=True)),
         pstyle("Abstract", "Abstract", ppr='<w:jc w:val="both"/>' + sp(0, 120)),
         pstyle("Heading1", "heading 1", nxt="FirstParagraph", outline=0,
                ppr=sp(300, 100, 240) + '<w:keepNext/><w:keepLines/>', rp=rpr(15, bold=True, color=NAVY)),
         pstyle("Heading2", "heading 2", nxt="FirstParagraph", outline=1,
                ppr=sp(200, 70, 240) + '<w:keepNext/><w:keepLines/>', rp=rpr(11.5, bold=True, color=NAVY2)),
         pstyle("Heading3", "heading 3", nxt="FirstParagraph", outline=2,
                ppr=sp(140, 50, 240) + '<w:keepNext/>', rp=rpr(10.5, bold=True, italic=True, color=NAVY2)),
         pstyle("BlockText", "Block Text", ppr='<w:ind w:left="360" w:right="360"/>' +
                f'<w:pBdr><w:left w:val="single" w:sz="18" w:space="8" w:color="{NAVY2}"/></w:pBdr>'
                + '<w:shd w:val="clear" w:color="auto" w:fill="EEF2F8"/>' + sp(60, 120), rp=rpr(9.5)),
         pstyle("FootnoteText", "footnote text", ppr=sp(0, 0), rp=rpr(8.5)),
         pstyle("Caption", "caption", ppr='<w:jc w:val="center"/>' + sp(40, 200, 240),
                rp=rpr(9, italic=True, color=GREY)),
         pstyle("ImageCaption", "Image Caption", based="Caption"),
         pstyle("TableCaption", "Table Caption", based="Caption", ppr='<w:keepNext/>' + sp(120, 60, 240)),
         pstyle("Figure", "Figure", ppr='<w:jc w:val="center"/><w:keepNext/>' + sp(120, 0, 240)),
         pstyle("CaptionedFigure", "Captioned Figure", based="Figure"),
         pstyle("Bibliography", "Bibliography", ppr='<w:ind w:left="360" w:hanging="360"/>' + sp(0, 50, 240),
                rp=rpr(9)),
         pstyle("SourceCode", "Source Code", ppr='<w:shd w:val="clear" w:color="auto" w:fill="F4F5F7"/>'
                + sp(60, 120, 240), rp=rpr(8.5, font="Consolas")),
         pstyle("TOCHeading", "TOC Heading", based="Heading1"),
         pstyle("Equation", "Equation", ppr='<w:tabs><w:tab w:val="center" w:pos="%d"/><w:tab w:val="right" w:pos="%d"/></w:tabs>'
                % (TEXT_W // 2, TEXT_W) + sp(80, 120, 240)),
         '<w:style w:type="character" w:default="1" w:styleId="DefaultParagraphFont"><w:name w:val="Default Paragraph Font"/><w:uiPriority w:val="1"/><w:semiHidden/></w:style>',
         '<w:style w:type="character" w:styleId="BodyTextChar"><w:name w:val="Body Text Char"/><w:basedOn w:val="DefaultParagraphFont"/></w:style>',
         '<w:style w:type="character" w:styleId="VerbatimChar"><w:name w:val="Verbatim Char"/><w:basedOn w:val="DefaultParagraphFont"/>'
         + rpr(9, font="Consolas", color="2B3A55") + '</w:style>',
         '<w:style w:type="character" w:styleId="FootnoteReference"><w:name w:val="footnote reference"/><w:basedOn w:val="DefaultParagraphFont"/><w:rPr><w:vertAlign w:val="superscript"/></w:rPr></w:style>',
         f'<w:style w:type="character" w:styleId="Hyperlink"><w:name w:val="Hyperlink"/><w:basedOn w:val="DefaultParagraphFont"/><w:rPr><w:color w:val="{NAVY2}"/><w:u w:val="single"/></w:rPr></w:style>',
         '<w:style w:type="table" w:default="1" w:styleId="TableNormal"><w:name w:val="Normal Table"/><w:semiHidden/><w:tblPr><w:tblInd w:w="0" w:type="dxa"/><w:tblCellMar><w:top w:w="0" w:type="dxa"/><w:left w:w="108" w:type="dxa"/><w:bottom w:w="0" w:type="dxa"/><w:right w:w="108" w:type="dxa"/></w:tblCellMar></w:tblPr></w:style>',
         '<w:style w:type="table" w:styleId="Table"><w:name w:val="Table"/><w:basedOn w:val="TableNormal"/><w:qFormat/>'
         '<w:pPr><w:spacing w:before="0" w:after="0" w:line="240" w:lineRule="auto"/><w:jc w:val="left"/></w:pPr>'
         + rpr(8.5) +
         f'<w:tblPr><w:tblBorders>{tbl_borders}</w:tblBorders>'
         '<w:tblCellMar><w:top w:w="35" w:type="dxa"/><w:left w:w="80" w:type="dxa"/><w:bottom w:w="35" w:type="dxa"/><w:right w:w="80" w:type="dxa"/></w:tblCellMar></w:tblPr>'
         f'<w:tblStylePr w:type="firstRow"><w:rPr><w:b/><w:bCs/></w:rPr><w:tblPr/><w:trPr><w:tblHeader/></w:trPr>'
         f'<w:tcPr><w:shd w:val="clear" w:color="auto" w:fill="{HEAD_FILL}"/></w:tcPr></w:tblStylePr></w:style>',
         '</w:styles>']
    return "".join(s)


FOOTER = (f'<?xml version="1.0" encoding="UTF-8" standalone="yes"?><w:ftr {W}><w:p><w:pPr><w:jc w:val="center"/></w:pPr>'
          f'<w:r>{rpr(9, color="808080")}<w:fldChar w:fldCharType="begin"/></w:r>'
          f'<w:r>{rpr(9, color="808080")}<w:instrText xml:space="preserve"> PAGE </w:instrText></w:r>'
          f'<w:r>{rpr(9, color="808080")}<w:fldChar w:fldCharType="separate"/></w:r>'
          f'<w:r>{rpr(9, color="808080")}<w:t>1</w:t></w:r>'
          f'<w:r>{rpr(9, color="808080")}<w:fldChar w:fldCharType="end"/></w:r></w:p></w:ftr>')

SECTPR = ('<w:sectPr><w:footerReference w:type="default" r:id="rIdFooter1"/>'
          '<w:pgSz w:w="12240" w:h="15840"/>'
          '<w:pgMar w:top="1008" w:right="720" w:bottom="1008" w:left="720" w:header="576" w:footer="504" w:gutter="0"/>'
          '</w:sectPr>')


def number_equations(doc):
    """Put each display equation followed by an EQNUM(n) paragraph into a
    borderless three-column table: spacer | centred equation | (n). The table
    keeps Word's display-math layout, which a tab-stop line would lose."""
    pat = re.compile(r'<w:p>(?:<w:pPr>(?:(?!</w:pPr>).)*</w:pPr>)?(<m:oMathPara>.*?</m:oMathPara>)</w:p>\s*'
                     r'<w:p>(?:(?!</w:p>).)*?EQNUM\((\d+)\)(?:(?!</w:p>).)*</w:p>', re.S)
    side, mid = 900, TEXT_W - 1800
    none = "".join(f'<w:{e} w:val="nil"/>' for e in ["top", "left", "bottom", "right", "insideH", "insideV"])
    cell = lambda w, body: (f'<w:tc><w:tcPr><w:tcW w:w="{w}" w:type="dxa"/><w:vAlign w:val="center"/></w:tcPr>{body}</w:tc>')
    par = lambda jc, inner: f'<w:p><w:pPr><w:spacing w:before="60" w:after="60"/><w:jc w:val="{jc}"/></w:pPr>{inner}</w:p>'

    def rep(m):
        return ('<w:tbl><w:tblPr><w:tblW w:w="%d" w:type="dxa"/><w:jc w:val="center"/>'
                '<w:tblBorders>%s</w:tblBorders><w:tblLayout w:type="fixed"/></w:tblPr>'
                '<w:tblGrid><w:gridCol w:w="%d"/><w:gridCol w:w="%d"/><w:gridCol w:w="%d"/></w:tblGrid><w:tr>'
                % (TEXT_W, none, side, mid, side)
                + cell(side, par("left", ""))
                + cell(mid, f'<w:p><w:pPr><w:spacing w:before="60" w:after="60"/><w:jc w:val="center"/></w:pPr>{m.group(1)}</w:p>')
                + cell(side, par("right", f'<w:r><w:t>({m.group(2)})</w:t></w:r>'))
                + '</w:tr></w:tbl>')
    doc, n = pat.subn(rep, doc)
    left = doc.count("EQNUM(")
    if left:
        raise SystemExit(f"build_report: {left} EQNUM markers were not matched to an equation")
    return doc, n


def full_width_tables(doc):
    doc = re.sub(r'<w:tblW w:type="(?:auto|pct)"[^>]*/>', '<w:tblW w:type="pct" w:w="5000"/>', doc)
    doc = re.sub(r'<w:tblLook [^>]*/>',
                 '<w:tblLook w:firstRow="1" w:lastRow="0" w:firstColumn="0" w:lastColumn="0" w:noHBand="1" w:noVBand="1"/>', doc)
    return doc


def main():
    tmp = tempfile.mkdtemp()
    ref = os.path.join(tmp, "reference.docx")
    subprocess.run(["pandoc", "-o", ref, "--print-default-data-file", "reference.docx"], check=True)
    rdir = os.path.join(tmp, "ref")
    with zipfile.ZipFile(ref) as z:
        z.extractall(rdir)
    with open(os.path.join(rdir, "word", "styles.xml"), "w", encoding="utf8") as f:
        f.write(styles_xml())
    os.remove(ref)
    shutil.make_archive(os.path.join(tmp, "reference"), "zip", rdir)
    os.rename(os.path.join(tmp, "reference.zip"), ref)

    raw = os.path.join(tmp, "raw.docx")
    subprocess.run(["pandoc", SRC, "-f", "markdown+tex_math_dollars+pipe_tables+implicit_figures",
                    "-o", raw, "--reference-doc", ref, "--resource-path", HERE, "--columns", "80"],
                   check=True, cwd=HERE)

    odir = os.path.join(tmp, "out")
    with zipfile.ZipFile(raw) as z:
        z.extractall(odir)
    dpath = os.path.join(odir, "word", "document.xml")
    doc = open(dpath, encoding="utf8").read()
    doc = full_width_tables(doc)
    doc, n_eq = number_equations(doc)
    # never split a table row across pages
    doc = re.sub(r'<w:tr>(?!<w:trPr>)', '<w:tr><w:trPr><w:cantSplit/></w:trPr>', doc)
    doc = doc.replace('<w:tr><w:trPr>', '<w:tr><w:trPr><w:cantSplit/>').replace('<w:cantSplit/><w:cantSplit/>', '<w:cantSplit/>')
    # breathing space after every table (Word has no table spacing-after)
    doc = doc.replace("</w:tbl>", '</w:tbl><w:p><w:pPr><w:spacing w:before="0" w:after="0" w:line="120" w:lineRule="exact"/></w:pPr></w:p>')
    if 'xmlns:r=' not in doc[:2000]:
        doc = doc.replace("<w:document ", '<w:document xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" ', 1)
    doc = re.sub(r'<w:sectPr\b.*?</w:sectPr>', '', doc, flags=re.S)
    doc = doc.replace("</w:body>", SECTPR + "</w:body>")
    open(dpath, "w", encoding="utf8").write(doc)

    # Word math defaults: display style with limits under / over n-ary operators
    spath = os.path.join(odir, "word", "settings.xml")
    st = open(spath, encoding="utf8").read()
    if "<m:mathPr>" not in st:
        if 'xmlns:m=' not in st[:3000]:
            st = st.replace("<w:settings ", '<w:settings xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" ', 1)
        mp = ('<m:mathPr><m:mathFont m:val="Cambria Math"/><m:brkBin m:val="before"/><m:brkBinSub m:val="--"/>'
              '<m:smallFrac m:val="0"/><m:dispDef/><m:lMargin m:val="0"/><m:rMargin m:val="0"/>'
              '<m:defJc m:val="centerGroup"/><m:wrapIndent m:val="1440"/><m:intLim m:val="subSup"/>'
              '<m:naryLim m:val="undOvr"/></m:mathPr>')
        st = re.sub(r'(<w:settings[^>]*>)', r'\1' + mp, st, count=1)
        open(spath, "w", encoding="utf8").write(st)

    open(os.path.join(odir, "word", "footer1.xml"), "w", encoding="utf8").write(FOOTER)
    rels = os.path.join(odir, "word", "_rels", "document.xml.rels")
    r = open(rels, encoding="utf8").read()
    r = r.replace("</Relationships>",
                  '<Relationship Id="rIdFooter1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/footer" Target="footer1.xml"/></Relationships>')
    open(rels, "w", encoding="utf8").write(r)
    ct = os.path.join(odir, "[Content_Types].xml")
    c = open(ct, encoding="utf8").read()
    c = c.replace("</Types>", '<Override PartName="/word/footer1.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.footer+xml"/></Types>')
    open(ct, "w", encoding="utf8").write(c)

    if os.path.exists(OUT):
        os.remove(OUT)
    with zipfile.ZipFile(OUT, "w", zipfile.ZIP_DEFLATED) as z:
        # [Content_Types].xml must be the first entry
        z.write(ct, "[Content_Types].xml")
        for root, _, files in os.walk(odir):
            for fn in files:
                full = os.path.join(root, fn)
                arc = os.path.relpath(full, odir)
                if arc != "[Content_Types].xml":
                    z.write(full, arc)
    shutil.rmtree(tmp)
    print(f"build_report: wrote {OUT} ({n_eq} numbered equations)")


def build_pdf():
    """PDF through pandoc + xelatex from the same Markdown source."""
    if not shutil.which("xelatex"):
        print("build_report: xelatex not found, PDF skipped")
        return
    md = open(SRC, encoding="utf8").read()
    # EQNUM(n) after a display equation becomes \tag{n} inside it
    md = re.sub(r"\$\$(.+?)\$\$\s*\n\s*EQNUM\((\d+)\)", lambda m: "$$" + m.group(1) + r"\tag{" + m.group(2) + "}$$",
                md, flags=re.S)
    md = re.sub(r"```\{=openxml\}.*?```", r"\\newpage", md, flags=re.S)
    md = re.sub(r"!\[\*Figure \d+\.\*\s*", "![", md)   # LaTeX numbers figures itself
    for ch, tex in [("✓", r"\ensuremath{\checkmark}"), ("→", r"\ensuremath{\rightarrow}"),
                    ("≈", r"\ensuremath{\approx}"), ("≤", r"\ensuremath{\le}"), ("≥", r"\ensuremath{\ge}")]:
        md = md.replace(ch, tex)   # glyphs missing from the text font
    tmp = tempfile.mkdtemp()
    src = os.path.join(tmp, "report.md")
    open(src, "w", encoding="utf8").write(md)
    head = os.path.join(tmp, "head.tex")
    open(head, "w", encoding="utf8").write(
        "\\usepackage{xcolor}\\definecolor{navy}{HTML}{" + NAVY + "}\n"
        "\\makeatletter\n"
        "\\renewcommand\\section{\\@startsection{section}{1}{\\z@}{-3ex plus -1ex}{1.2ex}{\\color{navy}\\sffamily\\Large\\bfseries}}\n"
        "\\renewcommand\\subsection{\\@startsection{subsection}{2}{\\z@}{-2.5ex plus -1ex}{0.8ex}{\\color{navy}\\sffamily\\large\\bfseries}}\n"
        "\\makeatother\n"
        "\\usepackage{caption}\\captionsetup{font=small}\n"
        "\\renewcommand{\\arraystretch}{1.15}\n"
        "\\AtBeginEnvironment{longtable}{\\footnotesize}\n")
    subprocess.run(["pandoc", src, "-f", "markdown+tex_math_dollars+pipe_tables+implicit_figures",
                    "-o", PDF, "--pdf-engine=xelatex", "--resource-path", HERE, "-H", head,
                    "-V", "geometry:margin=0.8in", "-V", "fontsize=10pt", "-V", "colorlinks=true",
                    "-V", "mainfont=STIX Two Text", "-V", "sansfont=Helvetica Neue",
                    "-V", "mathfont=STIX Two Math", "--columns", "80"], check=True, cwd=HERE)
    shutil.rmtree(tmp)
    print(f"build_report: wrote {PDF}")


if __name__ == "__main__":
    main()
    build_pdf()
