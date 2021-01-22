% Resize image to 100x100 pixels with selected target
function image = resizeImageToPredict(image)
    % Select target
    target = selectTarget(image);
    image = image(target(1,1):target(1,2), target(1,3):target(1,4),min(1:3, end)); 
    
    imshow(image)
    
    % Resize image
    image(:, :, min(1:3, end)); 
    image = imresize(image, [100 100]); 
end

