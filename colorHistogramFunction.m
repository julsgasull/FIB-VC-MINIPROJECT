% Extract color histogram of an image
function [redHistogram, blueHistogram] = colorHistogramFunction(image)    

    [height,width,dim] = size(image);
    redHistogram = [];
    blueHistogram = [];
 
    for x = 1 : height
        for y = 1: width
            redHistogram(x,y) = image(x, y, 1);  
            blueHistogram(x,y) = image(x, y, 3);  
        end
    end
    redHistogram = redHistogram'; redHistogram = redHistogram(:)';
    blueHistogram = blueHistogram'; blueHistogram = blueHistogram(:)';
end