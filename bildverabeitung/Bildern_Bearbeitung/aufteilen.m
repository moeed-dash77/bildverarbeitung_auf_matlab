function grau = aufteilen(I)
grau = I(:,:,3);
for x = 1:size(I,2)
for y= 1:size(I,1)
if y > x
grau(y,x) = I(y,x,2);
end
end
end
end