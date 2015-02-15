classdef LineSegment
    % This class allows for the following calls:
    % 
    % length(ls) returns the length of the line segment
    %
    % display(ls) displays a graph of the line segment
    %
    % Also note that this class only accepts Point objects via its
    % constructor
    
    properties
        Start;
        Finish;
    end
    
    methods
        function obj = LineSegment(pt1, pt2)
            obj.Start = pt1;
            obj.Finish = pt2;
        end
        
        function obj = set.Start(obj, val)
            if isa(val, 'Point')
                obj.Start = val;
            else
                error('Start must be a point!');
            end
        end
        
        function obj = set.Finish(obj, val)
            if isa(val, 'Point')
                obj.Finish = val;
            else
                error('Finish must be a point!');
            end
        end
        
        function l = length(ls)
            l = distance(ls.Start, ls.Finish);
        end
        
        function display(ls) %#ok<DISPLAY> - overrides the warning message for display
            x_start = ls.Start.xval;
            x_finish = ls.Finish.xval;
            y_start = ls.Start.yval;
            y_finish = ls.Finish.yval;
            hold on
            axis xy
            % creating this title took way more effort than I'd like to
            % admit
            title_string = strcat('Line Segment Graph Of',{' '}, inputname(1));
            title(title_string);
            xlabel('X');
            ylabel('Y');            
            plot(x_start, y_start, '*');
            plot(x_finish, y_finish, 'o');
            legend('Start Point', 'End Point');
            plot([x_start, x_finish], [y_start, y_finish]);
            hold off
        end
    end
    
end

