% deCasteljauSurface.m
%
% SYNTAX: b0n = deCasteljau(b,t)
%
%
% INPUT 
%       b : n x 2 matrix containing the coordinates of the control points
%       t : parameter value
%
% OUTPUT
%       b0n : valore della curva di Bezier in t
%
% DESCRIPTION
%       The function implements de Casteljau's algorithm returning 
%       the point, relative to the "t" value of the parameter, belonging 
%       to the Bezier curve defined by the control points contained in 
%       "b".

function Xuv = deCasteljauSurface(b, u, v)
      
    [m, n, l] = size(b);
    if l ~= 3
            error('Tensor dimension has to be mxnx3');
    end    
    uu = 1-u;
    vv = 1-v;
    U = [uu u];
    V = [vv v]';
    gamma = min(n, m);
    for r=1:gamma
        for s=1:gamma
           for i=1:gamma-r
                for j=1:gamma-s
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