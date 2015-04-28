function energyImage = energy_image(im)
    grayImage = rgb2gray(im);
    imshow(grayImage);%
    energyImage = gradient(double(grayImage));
    imshow(energyImage);