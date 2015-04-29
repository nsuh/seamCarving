function display_seam(im, seam, seamDirection)
    figure
    imshow(im)
    hold on
    if strcmp(seamDirection, 'VERTICAL')
        plot(seam, 1:numel(seam))
    elseif strcmp(seamDirection, 'HORIZONTAL')
        plot(1:numel(seam), seam)
    end