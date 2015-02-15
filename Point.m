classdef Point
    % This class allows for the following calls:
    % 
    % pt = Point creates a Point object with default values
    %
    % pt = Point(xval, yval) creates a Point object with given arguments
    %
    % distance(pt1, pt2) returns the Euclidean distance between the two
    % argument points
    %
    % pt1 + pt2 returns a point where the x and y values are summed from
    % the 2 points
    %
    % pt1 - pt2 returns a point where the x and y values are the
    % differences of the x and y values of the 2 points
    %
    % display(pt1) displays the argument in the form "pt1 = <x,y>"
    
    properties
        % default values for x and y
        xval = 0;
        yval = 0;
    end
    
    methods
        function obj = Point(x, y)
            if nargin > 0 % allows for the default setting above
                obj.xval = x;
                obj.yval = y;
            end
        end
        
        function dist = distance(pt1, pt2)
            x_dist = pt1.xval - pt2.xval;
            y_dist = pt1.yval - pt2.yval;
            dist = sqrt(x_dist.^2 + y_dist.^2);
        end
        
        function pt = plus(pt1, pt2)
            new_x = pt1.xval + pt2.xval;
            new_y = pt1.yval + pt2.yval;
            pt = Point(new_x, new_y);
        end
        
        function pt = minus(pt1, pt2)
            new_x = pt1.xval - pt2.xval;
            new_y = pt1.yval - pt2.yval;
            pt = Point(new_x, new_y);
        end
        
        function display(pt1) %#ok<DISPLAY> - overrides the warning message for display
            disp([inputname(1) ' = <' num2str(pt1.xval) ',' num2str(pt1.yval) '>']);
        end
    end
    
end

