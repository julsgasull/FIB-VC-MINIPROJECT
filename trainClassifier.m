% Train image classifier
function trainClassifier()
    digitDatasetPath = fullfile("images/train/");

    imds = imageDatastore(digitDatasetPath, ...
        'IncludeSubfolders', true, ...
        'LabelSource','foldernames');

    imds.ReadFcn = @customReadDatastoreImage;

    [trainingSet,testSet] = splitEachLabel(imds, 0.8, 'randomize');

    extractorFcn = @extractFeaturesFunction;
    bag = bagOfFeatures(trainingSet,'CustomExtractor',extractorFcn);

    classifier = trainImageCategoryClassifier(trainingSet,bag);
    confMatrix = evaluate(classifier, testSet);
    
    save('classifier.mat', 'classifier');
end

