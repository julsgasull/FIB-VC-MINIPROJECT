% Extract hog histogram of an image
function hog = hogFunction(img)
    % Extract HOG Features
    [hog, ~] = extractHOGFeatures(img);
end