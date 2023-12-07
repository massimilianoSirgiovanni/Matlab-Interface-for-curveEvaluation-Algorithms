function B = bernstein(i, n, t)
B = nchoosek(n,i).*t.^i.*(1-t).^(n-i);
B = B(:);
end

