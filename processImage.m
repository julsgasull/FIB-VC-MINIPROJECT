% Process image (resize and feature extraction)
function features = processImage(image)
    % resize image
    image = resizeImage(image);  
    
    % extract features
    features = hogFunction(image);
end

