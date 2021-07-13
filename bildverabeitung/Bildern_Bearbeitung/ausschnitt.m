function N = ausschnitt(A,x,y,h,b)

[m, n, ~] = size(A);

% Check, ob Startpunkt im Bild liegt
if x>m || y>n
    error('Der Startpunkt liegt außerhalb des Bildes.');
end

% Falls Ausschnitt über Bild hinausreicht wird er eingekürzt
if x+h > m
    k = m;
else
    k = x+h-1;
end
if y+b > n
    l = n;
else
    l = y+b-1;
end

% Schleifenbasiert
N = uint8(zeros(h,b,3));
for c = x : k
    for d = y : l
        for ch = 1: size(A,3)
        N(c-x+1,d-y+1,ch) = A(c,d,ch);
        end
    end
end

% Vektorisiert
% N = A(x:k,y:l,:);

end