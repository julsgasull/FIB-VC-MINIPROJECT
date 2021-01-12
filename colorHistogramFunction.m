% Extract color histogram of an image
function [redHistogram, blueHistogram] = colorHistogramFunction(image)    
    [width, height, ~] = size(image);
    
    redHistogram = zeros(1, width*height);
    blueHistogram = zeros(1, width*height);
 
    for x = 1 : height
        for y = 1: width
            redHistogram((x - 1)*width + y) = image(x, y, 1);  
            blueHistogram((x - 1)*width + y) = image(x, y, 3);  
        end
    end
end

