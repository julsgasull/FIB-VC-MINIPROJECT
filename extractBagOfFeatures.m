function [bagOfFeatures] = extractBagOfFeatures(pathToFolder)
    bagOfFeatures = [];

    indexBagOfFeatures = 1;

    for k = 0:42
        folder = pathToFolder + int2str(k);
        folder = convertStringsToChars(folder);
        fileType = fullfile(folder, "*.png");
        files = dir(fileType);

        for idx = 1:length(files)
            fileName = files(idx).name;
            imagePath = fullfile(files(idx).folder, fileName);
            image = imread(imagePath); % read image

            imageFeatures = processImage(image);
            bagOfFeatures(indexBagOfFeatures,:) = [imageFeatures, k];
            indexBagOfFeatures = indexBagOfFeatures + 1;
        end
    end
end

