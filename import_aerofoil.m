function [X, Y] = import_aerofoil(filename)
% IMPORT_AEROFOIL  get normalised x, y data from an aerofil
%   aerfoil must be in the same format as obtained from airfoiltools.com
%   output as two column vectors of X, Y coordinates
    airfoil = importdata(filename);
    X = airfoil.data(:, 1);
    Y = airfoil.data(:, 2);
end