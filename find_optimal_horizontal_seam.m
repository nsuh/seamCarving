function horizontalSeam = find_optimal_horizontal_seam(cumulativeEnergyMap)
    %cumulativeEnergyMap = cumulativeEnergyMap';
    horizontalSeam = find_optimal_vertical_seam(cumulativeEnergyMap');
    horizontalSeam = horizontalSeam';