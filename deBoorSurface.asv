% deBoorSurface.m
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

function output = deBoorSurface(u, v, knots, d, degree)
    if nargin~=5
        help deBoorSurface;
    end

    [m, n, l] = size(d);
    if l ~= 3
            error('Tensor dimension has to be mxnx3');
    end    
    c = -1;
    h = -1;
    for k=1:length(knots)-2
        if knots(k)<=u && knots(k+1)>u
            c = k;
        end
        if knots(k)<=v && knots(k+1)>v
            h = k;
        end
        if c~=-1 && h~=-1
            break
        end
    end
    if c~=-1 && knots(length(knots))==u
        c = length(knots);
    end
    if h~=-1 && knots(length(knots))==v
        h = length(knots);
    end
    if c==-1
        disp("Error: there is no intervall in knots point where u is contained")
        return;
    end
    if h == -1
        disp("Error: there is no intervall in knots point where v is contained")
        return;
    end
    xt = zeros(degree, 1, 3);
    
    for k=c-degree+1:c
        for r=2:degree
            for i=degree:-1:r
                omega = (v - knots(i + h - degree)) / (knots(i + h - 1) - knots(i + h - degree));
                d(k, i, :) = (1.0 - omega) * d(k, i - 1, :) + omega * d(k, i, :);
            end
            
        end
        xt_k = k - (c-degree);
        xt(xt_k, 1, :) = d(k, degree, :);
        plot3(xt(xt_k, 1, 1), xt(xt_k, 1, 2), xt(xt_k, 1, 3),'ro');
        pause
    end
    plot3(xt(:, :, 1), xt(:, :, 2), xt(:, :, 3) ,'r', 'LineWidth', 1);
    pause
    x_out = zeros(degree, 1, 3);
    x_out(1:degree, 1, :) = xt(:, 1, :);
    for r=2:degree
        for i=degree:-1:r
                omega = (u - knots(i + c - degree)) / (knots(i + c - 1) - knots(i + c - degree));
                x_out(i, :, :) = (1.0 - omega) * x_out(i - 1, :, :) + omega * x_out(i, :, :);
        end
    end
    output = x_out(degree, 1, :);
    plot3(x_out(degree, :, 1), x_out(degree, :, 2), x_out(degree, :, 3), '-o','Color','b','MarkerSize',10,'MarkerFaceColor','red');





%{
    for r=1:gamma
        for s=1:gamma
           for i=r-c+1:r
                for j=1:gamma-s
                    omega1 = (t - knots(i + j - degree)) / (knots(i + j - 1) - knots(i + j - degree));
                    b(i, j, 1) = U*[b(i, j, 1) b(i, j+1, 1); b(i+1, j,1) b(i+1, j+1,1)]*V;
                    b(i, j, 2) = U*[b(i, j, 2) b(i, j+1, 2); b(i+1, j,2) b(i+1, j+1,2)]*V;
                    b(i, j, 3) = U*[b(i, j, 3) b(i, j+1, 3); b(i+1, j,3) b(i+1, j+1,3)]*V;
                end
                
           end
        end
        if (~isvector(b(1:gamma-r, 1:gamma, 3)) && ~isscalar(b(1:gamma-r, 1:gamma, 3)))
           surf(b(1:gamma-r, 1:gamma, 1), b(1:gamma-r,  1:gamma, 2), b(1:gamma-r,  1:gamma, 3),'FaceAlpha',0.2, 'facecolor', 'g');
        else
           plot3(b(1:gamma-r, 1:gamma, 1), b(1:gamma-r,  1:gamma, 2), b(1:gamma-r,  1:gamma, 3), 'b')
        end
        pause
    end

    Xuv = b(1, 1, :);
    plot3(Xuv(:, :, 1), Xuv(:, :, 2), Xuv(:, :, 3), '-o','Color','b','MarkerSize',10,'MarkerFaceColor','red'),

Altra roba
uu = 1-u;
        vv = 1-v;
        U = [uu u];
        V = [vv v]';
        c = -1;
        h = -1;
        for k=1:length(knots)-1
            if knots(k)<=u && knots(k+1)>u
                c = k;
            end
            if knots(k)<=v && knots(k+1)>v
                h = k;
            if c~=1 && h ~= -1
                break
            end
        end

        if c==-1 || h == -1
            disp("Error: there is no intervall in knots point where t is contained")
            return;
        end
        s = 0;
        t = 0;
        if u == knots(c)
            s = sum(knots==u);
        end

        if v == knots(h)
            t = sum(knots==v);
        end
        for i=c-degree:c-s
            disp(i)
        end
        d = zeros(degree, 2);
        hold on;
        plot(controlPoints(:, 1), controlPoints(:, 2), 'b')
        pause
        d(1:degree, :) = controlPoints(j-degree+1:j, :);
        %plot(d(:, 1), d(:, 2), 'b')
        %pause
        for r=2:degree
            for i=degree:-1:r
                omega = (t - knots(i + j - degree)) / (knots(i + j - 1) - knots(i + j - degree));
                d(i, :) = (1.0 - omega) * d(i - 1, :) + omega * d(i, :);
            end
            plot(d(r:degree,1),d(r:degree,2),'b','Linewidth',1);
            pause
        end
        xt = d(degree, :);
        plot(xt(1,1),xt(1,2),'xk');
        end
%}