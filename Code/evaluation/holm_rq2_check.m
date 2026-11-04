%HOLM_RQ2_CHECK Holm-adjust the saved one-sided RQ2 QLIKE p-values (p1).
%   Family: the three set steps (A->B, A->C, A->D) per target and horizon.
%   Reads Output/tables/test/main/rq2_<target>_h<h>.csv; prints only, writes nothing.
root = fileparts(fileparts(fileparts(mfilename('fullpath'))));
tblDir = fullfile(root, 'Output', 'tables', 'test', 'main');
fprintf('%-4s %3s %-5s %9s %9s\n', 'tgt', 'h', 'step', 'p1', 'p1_holm');
for target = {'SPY', 'ES'}
    for h = [1 5 22]
        T = readtable(fullfile(tblDir, sprintf('rq2_%s_h%d.csv', target{1}, h)), 'TextType', 'string');
        T = T(T.loss == "QLIKE", :);
        padj = holm_adjust(T.p1);
        for i = 1:height(T)
            fprintf('%-4s %3d %-5s %9.4f %9.4f\n', target{1}, h, T.step(i), T.p1(i), padj(i));
        end
    end
end
