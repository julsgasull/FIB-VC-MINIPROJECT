% Extract hog histogram of an image
function hog = hogFunction(img)
    % Extract HOG Features
    [hog, hogVisualization] = extractHOGFeatures(img);
end

