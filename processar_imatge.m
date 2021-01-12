function features = processar_imatge(image)

    features = [];
    % Enlarge figure to full screen.
    set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
    [rows, columns, numberOfColorBands] = size(image);

    blockSizeR = rows/3;           % Rows in block.
    blockSizeC = columns/3;     % Columns in block.

    % Figure out the size of each block in rows.
    % Most will be blockSizeR but there may be a remainder amount of less than that.
    wholeBlockRows = floor(rows / blockSizeR);
    blockVectorR = [blockSizeR * ones(1, wholeBlockRows), rem(rows, blockSizeR)];
    % Figure out the size of each block in columns.
    wholeBlockCols = floor(columns / blockSizeC);
    blockVectorC = [blockSizeC * ones(1, wholeBlockCols), rem(columns, blockSizeC)];

    % Create the cell array, ca. 
    % Each cell (except for the remainder cells at the end of the image)
    % in the array contains a blockSizeR by blockSizeC by 3 color array.
    % This line is where the image is actually divided up into blocks.
    ca = mat2cell(image, blockVectorR, blockVectorC, numberOfColorBands);

    % Now display all the blocks.
    plotIndex = 1;
    numPlotsR = size(ca, 1);
    numPlotsC = size(ca, 2);
    for r = 1 : numPlotsR
        for c = 1 : numPlotsC
            fprintf('plotindex = %d,   c=%d, r=%d\n', plotIndex, c, r);
            % Specify the location for display of the image.
            subplot(numPlotsR, numPlotsC, plotIndex);
            % Extract the numerical array out of the cell
            % just for tutorial purposes.
            rgbBlock = ca{r,c};
            [histRed, histBlue] = colorHistogramFunction(rgbBlock);
            features =  [features, histRed, histBlue];
            plotIndex = plotIndex + 1;
        end
    end

    
    % hog
    hog = hogFunction(image);
    
    % return features
    features = [features, hog];
end
