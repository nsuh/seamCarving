im  = energy_image(imread('core.jpg'));
map = cumulative_minimum_energy_map(im, 'VERTICAL');
imshow(map)