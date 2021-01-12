function [features,featureMetrics] = extractFeaturesFunction(img)
    [redHistogram, blueHistogram] = colorHistogramFunction(img);
    
    hog = hogFunction(img);
    
    features = [redHistogram blueHistogram hog];
    featureMetrics = 1;
end

