% Extract hog histogram of an image
function hog = hogFunction(image)
    % Extract HOG Features
    [hog, ~] = extractHOGFeatures(image);
end