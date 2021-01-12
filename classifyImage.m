% Extract hog histogram of an image
function classifyImage()
    digitDatasetPath = fullfile("images/evaluate/");

    imds = imageDatastore(digitDatasetPath);

    imds.ReadFcn = @customReadDatastoreImage;
    
    classifier = load('classifier.mat');
    im = imread('images/evaluate/00001_00000_00027.png');
    imshow(im)
    [label, score] = predict(classifier, im); 
    
    label
    score
end

