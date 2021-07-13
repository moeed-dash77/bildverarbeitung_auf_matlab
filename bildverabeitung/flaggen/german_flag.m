function F = german_flag(height)
%INFO: generates an image array of the german flag 

width = round(5/3*height); % flag sides ratio 3 : 5

F = zeros(height, width, 3, 'uint8');

% Borders between colors
x = round(linspace(1,height,4));

% Red
F((x(2)+1):x(3),:,1) = 255;
% Gold
F((x(3)+1):x(4),:,1) = 255;
F((x(3)+1):x(4),:,2) = 204;

% % Alternative
% F((x(2)+1):x(3),:,:) = repmat(reshape([255 0 0],1,1,3),x(3)-x(2),width,1);
% F((x(3)+1):x(4),:,:) = repmat(reshape([255 204 0],1,1,3),x(4)-x(3),width,1);

end