function F = french_flag(height)

width = round(5/3*height); % flag sides ratio 3 : 5

F = zeros(height, width, 3, 'uint8');

% Borders between colors
x = round(linspace(0,width,4));

% dark blue
F(:,(x(1)+1):x(2),3) = 255;
% white
F(:,(x(2)+1):x(3),1) = 255;
F(:,(x(2)+1):x(3),2) = 255;
F(:,(x(2)+1):x(3),3) = 255;
% red
F(:,(x(3)+1):x(4),1) = 255;

end