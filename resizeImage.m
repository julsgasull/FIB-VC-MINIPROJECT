% Resize image to 100x100 pixels
function image = resizeImage(image)
    image = image(:,:,min(1:3, end)); 
    image = imresize(image,[100 100]);
end

