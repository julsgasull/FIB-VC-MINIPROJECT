% Extract color histogram of an image
function [redHistogram, blueHistogram] = colorHistogramFunction(image)
    % Split into RGB Channels
    Red = image(:,:,1);
    Blue = image(:,:,3);

    % Get histValues for each channel
    [redHistogram, x] = imhist(Red);
    [blueHistogram, x] = imhist(Blue);
end

