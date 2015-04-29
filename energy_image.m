function energyImage = energy_image(im)
    grayImage = rgb2gray(im);
    %imshow(grayImage);%
    [x, y] = gradient(im2double(grayImage));
    energyImage = sqrt(x.^2+y.^2);
    %energyImage = gradient(double(grayImage));
    imshow(energyImage);