% deCasteljau.m
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

function b0n = deCasteljau(b,t)
    if nargin~=2 
        help deCasteljau;
    else
        [n,m]=size(b);
        if m ~= 2 
            error('Matrix dimension has to be nx2');
        end    
        tt = 1-t;
        %clf; 
        %title([strcat('De Casteljau Algorithm ', ' (n = ',num2str(n-1),', t = ',num2str(t),')')]);
        hold on;
        plot(b(:,1),b(:,2),'b'); 
        pause
        for k=1:n-1
            for i=1:n-k
                b(i,:)=tt*b(i,:)+t*b(i+1,:);
            end
           plot(b(1:n-k,1),b(1:n-k,2),'b','Linewidth',1);
           pause
        end
        b0n = b(1,:);
        plot(b0n(1,1),b0n(1,2),'xk');
    end