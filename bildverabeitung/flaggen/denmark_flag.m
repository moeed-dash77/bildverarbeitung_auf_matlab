function F = denmark_flag(height)
width = round(5/3*height); % flag sides ratio 3 : 5

F = zeros(height, width, 3, 'uint8');

% Borders between colors
x = round(linspace(0,width,10));
y = round(linspace(0,height,6));

% red background
F(:,:,1) = 255;
% white stripe vertical
F(:,(x(3)+1):x(4),1) = 255;
F(:,(x(3)+1):x(4),2) = 255;
F(:,(x(3)+1):x(4),3) = 255;
% white stripe horizontal
F((y(3)+1):y(4),:,1) = 255;
F((y(3)+1):y(4),:,2) = 255;
F((y(3)+1):y(4),:,3) = 255;

end