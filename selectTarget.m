function rect = selectTarget(image)
    % Show image to select target
    imshow(image)
    
    % Obtain rectangle of target object
    r = getrect;
    rect = zeros(1, 4);
    rect(1, 1) = r(1,2);
    rect(1, 2) = r(1,2) + r(1,4);
    rect(1, 3) = r(1,1);
    rect(1, 4) = r(1,1) + r(1,3);
end

