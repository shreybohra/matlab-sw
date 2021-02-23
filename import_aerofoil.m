function aerofoil = import_aerofoil(filename, plot)
% IMPORT_AEROFOIL  get normalised x, y data from an aerofil
%   aerofoil must be in a Selig format dat file - see airfoiltools.com
%   output as a polyshape
%   set plot as true to display imported geometry

    if nargin == 1
        plot = false;
    end
    
    imported = importdata(filename);
    aerofoil = polyshape(imported.data(:, 1), imported.data(:, 2));
    
    if plot
        
        figure
        plot(aerofoil);
        title ('Imported Geometry');
        xlabel ('x');
        ylabel ('y');
        axis equal        
    end
        
end
