% deBoor.m
%
% SYNTAX: xt = deBoor(t, knots, controlPoints, degree)
%
%
% INPUT 
%       t : parameter value
%       knots: Array of knot positions
%       controlPoints: Array of control points
%       degree: Degree of B-spline
%
% OUTPUT
%       xt : Value of the B-spline in t
%
% DESCRIPTION
%       The function implements the de Boor algorithm returning the point, 
%       relative to the t value of the parameter, belonging to B-spline of 
%       degree "degree" defined by the control points contained in 
%       "controlPoints" and by the nodes contained in "knots".

function xt = deBoor(t, knots, controlPoints, degree)
    if nargin~=4
        help deBoor;
    else
        j = -1;
        for k= degree:length(knots)- degree
            if knots(k)<=t && knots(k+1)>t
                j = k;
                break
            end
        end
        if t == knots(length(knots)-degree+1)
            j = length(knots) - degree;
        end
        if j==-1
            disp("Error: there is no intervall in knots point where t is contained")
            return;
        end
        dimD = degree + 1;
        d = zeros(dimD, 2);
        hold on;
        plot(controlPoints(:, 1), controlPoints(:, 2), 'b')
        pause
        d(1:dimD, :) = controlPoints(j-degree+1:j+1, :);
        for r=2:dimD
            for i=dimD:-1:r
                omega = (t - knots(j-dimD+i)) / (knots(j+i+1-r) - knots(j-dimD+i));
                d(i, :) = (1.0 - omega) * d(i - 1, :) + omega * d(i, :);
            end
            plot(d(r:dimD,1),d(r:dimD,2),'b','Linewidth',1);
            pause 
        end
        xt = d(dimD, :);
        plot(xt(1,1),xt(1,2),'xk');
    end