%HOLM_RQ2_CHECK Holm-adjust the saved one-sided RQ2 QLIKE p-values (p1).
%   Family: the three set steps (A->B, A->C, A->D) per target and horizon.
%   Reads Output/tables/test/main/rq2_<target>_h<h>.csv; prints only, writes nothing.
root = fileparts(fileparts(fileparts(mfilename('fullpath'))));
tblDir = fullfile(root, 'Output', 'tables', 'test', 'main');
fprintf('%-4s %3s %-5s %9s %9s\n', 'tgt', 'h', 'step', 'p1', 'p1_holm');
for target = {'SPY', 'ES'}
    for h = [1 5 22]
        fid = fopen(fullfile(tblDir, sprintf('rq2_%s_h%d.csv', target{1}, h)), 'r');
        hdr = strsplit(fgetl(fid), ',');
        C = textscan(fid, repmat('%s', 1, numel(hdr)), 'Delimiter', ',');
        fclose(fid);
        step = C{strcmp(hdr, 'step')};  loss = C{strcmp(hdr, 'loss')};
        p1 = str2double(C{strcmp(hdr, 'p1')});
        keep = strcmp(loss, 'QLIKE');  step = step(keep);  p1 = p1(keep);
        padj = holm_adjust(p1);
        for i = 1:numel(p1)
            fprintf('%-4s %3d %-5s %9.4f %9.4f\n', target{1}, h, step{i}, p1(i), padj(i));
        end
    end
end
