function [classifier] = loadClassifier(classifierName)
    classifier = load(classifierName + '.mat');
    classifier = classifier.trainedModel;
end

