function n = N(i, j, t, knots)
%Define the basis function
n = 0;
if j == 0
    if knots(i) <= t && t <knots(i+1)
        n = 1;
    end
else

    n = ((t-knots(i))/(knots(i+j)-knots(i)))*N(i, j-1, t, knots) + ((knots(i+j+1) - t)/(knots(i+j+1)-knots(i+1)))*N(i+1, j-1, t, knots);

end

end

