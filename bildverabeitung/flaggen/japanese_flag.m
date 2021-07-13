function F = japanese_flag(height)
%INFO: generates an image array of the Japanese flag 

width = round(height / 2 * 3); % flag sides ratio 2 : 3

% Schleifenvariante
F = zeros(height, width, 3, 'uint8');
for x=1:height
    for y=1:width
        if (x - height/2)^2 + (y - width/2)^2 <= height^2 * 9 /100 % inside circle?
            F(x,y,1) = 188;
            F(x,y,2) = 0;
            F(x,y,3) = 45;
        else
            F(x,y,1) = 255;
            F(x,y,2) = 255;
            F(x,y,3) = 255;
        end
    end
end

% % Vektorisiert
% [W, H] = meshgrid(1:width,1:height);
% mask = ((H - height/2).^2 + (W - width/2).^2 <= height^2 * 9 /100);
% F = uint8(255 + repmat(mask,1,1,3) .* repmat(reshape([188 0 45] - 255,...
%     1, 1, 3),height,width,1));

end