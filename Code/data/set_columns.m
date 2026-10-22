function cols = set_columns(Dz, setName)
%SET_COLUMNS Logical mask of the feature columns in a nested set.
switch setName
    case 'A',   g = {'A'};
    case 'B',   g = {'A','B'};
    case 'C',   g = {'A','B','C'};
    case 'D',   g = {'A','B','C','D'};
    case 'COM', g = {'A','B','C','O'};     % set C + Oxford-Man jump features
    case 'AV',  g = {'A','V'};             % HAR lags + log VIX
    case 'AL',  g = {'L'};                 % FFD-lags variant: FFD log RV replaces the HAR lags
    case 'BL',  g = {'L','B'};
    case 'CL',  g = {'L','B','C'};
    case 'DL',  g = {'L','B','C','D'};
    otherwise,  error('set_columns: unknown set %s', setName);
end
cols = ismember(Dz.group, g);
end
