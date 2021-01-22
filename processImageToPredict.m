% Process image (resize and feature extraction)
function features = processImageToPredict(image)
    % resize image
    image = resizeImageToPredict(image);  
    
    % extract features
    features = hogFunction(image);
end

