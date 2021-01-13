function features = processar_imatge(image)

    image = image(:,:,min(1:3, end)); 
    image = imresize(image,[100 100]);
    
    features = [];
    % Enlarge figure to full screen.
    set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
    [rows, columns, numberOfColorBands] = size(image);

    blockSizeR = rows/2;           % Rows in block.
    blockSizeC = columns/2;     % Columns in block.
    
    % Figure out the size of each block in rows.
    wholeBlockRows = floor(rows / blockSizeR);
    blockVectorR = [blockSizeR * ones(1, wholeBlockRows)];
    
    % Figure out the size of each block in columns.
    wholeBlockCols = floor(columns / blockSizeC);
    blockVectorC = [blockSizeC * ones(1, wholeBlockCols)];
    
    % Create the cell array, ca. 
    ca = mat2cell(image, blockVectorR, blockVectorC, numberOfColorBands);
    
    % Now display all the blocks.
    numPlotsR = size(ca, 1); numPlotsC = size(ca, 2); 
    for r = 1 : numPlotsR
        for c = 1 : numPlotsC
            % Extract the numerical array out of the cell just for tutorial purposes.
            rgbBlock = ca{r,c};
            [histRed, histBlue] = colorHistogramFunction(rgbBlock);
            features =  [features, histRed, histBlue];
        end
    end

    
    % hog
    hog = hogFunction(image);
    
    % return features
    features = [features, hog];
end

