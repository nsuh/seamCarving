%Nathan Suh
%reduces width of two sample pics by 100 pixels
im = imread('inputSeamCarvingPrague.jpg');
energy  = energy_image(im);
for i = 1:100
    [im, energy] = reduce_width(im, energy);
end
imshow(im)
imwrite(im, 'outputReduceWidthPrague.png')

im = imread('inputSeamCarvingMall.jpg');
energy  = energy_image(im);
for i = 1:100
    [im, energy] = reduce_width(im, energy);
end
imshow(im)
imwrite(im, 'outputReduceWidthMall.png')