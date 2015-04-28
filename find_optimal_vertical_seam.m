function verticalSeam = find_optimal_vertical_seam(cumulativeEnergyMap)
    M = cumulativeEnergyMap
    [rowSize, colSize] = size(cumulativeEnergyMap);
    verticalSeam = zeros(rowSize, 1);
    [highestEnergyValue, highestEnergyColPos] = max(cumulativeEnergyMap(end,:)
    verticalSeam(end) = highestEnergyValue;
    for i = rowSize-1:-1:1
        if highestEnergyColPos == colSize %if pixel is at left edge
            verticalSeam(i) = min([M(i, highestEnergyColPos), M(i, highestEnergyColPos +1)]); 
        elseif highestEnergyColPos == 1
            