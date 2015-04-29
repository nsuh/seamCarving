function [reducedColorImage, reducedEnergyImage] = reduce_width(im, energyImage)
    map = cumulative_minimum_energy_map(energyImage, 'VERTICAL');
    seam = find_optimal_vertical_seam(map);
    
    [rowSize, colSize, z] = size(im);
    for i = 1:rowSize
        reducedColorImage(i,:,1) = im(i,[1:seam(i)-1,seam(i)+1:end], 1); %concatenate elements of the row to the left and right of the pixel for the first dimension
        reducedColorImage(i,:,2) = im(i,[1:seam(i)-1,seam(i)+1:end], 2); %same for second dimension
        reducedColorImage(i,:,3) = im(i,[1:seam(i)-1,seam(i)+1:end], 3);
    end
    reducedEnergyImage = energy_image(reducedColorImage);
    %imshow(reducedColorImage);