function [features,featureMetrics] = extractFeatures(img)
    [redHistogram, blueHistogram] = colorHistogramFunction(img);
    redHistogram = redHistogram';
    blueHistogram = blueHistogram';
    
    hog = hogFunction(img);
    
    features = [redHistogram blueHistogram hog];
    featureMetrics = 1;
end

