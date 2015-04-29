%Nathan Suh
%Reduces the height of two sample images by 100 pixels 
im = imread('inputSeamCarvingPrague.jpg');
energy  = energy_image(im);
for i = 1:100
    [im, energy] = reduce_height(im, energy);
end
imshow(im)
imwrite(im, 'outputReduceHeightPrague.png')

im = imread('inputSeamCarvingMall.jpg');
energy  = energy_image(im);
for i = 1:100
    [im, energy] = reduce_height(im, energy);
end
imshow(im)
imwrite(im, 'outputReduceHeightMall.png')