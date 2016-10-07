% Uses Google Flu Trends data for the United States in 2013.

% Generates a scatter plot of estimated flu
% frequencies for the two regions with the lowest correlation.
[X, regionNames] = loadFluTrendsData();

% Correlations stores the pairwise correlations between
% every two regions (sides of the diagonal are equivalent)
Correlations = corr(X);
% Calculate the minimum correlation value in the matrix
minCorrVal = min(min(Correlations));
% Find the pair with the minimum correlation
[minRow, minCol] = find(Correlations == minCorrVal, 1);
% Get the names of the regions with minimum correlation
minCorrRegionName1 = regionNames(minRow)
minCorrRegionName2 = regionNames(minCol)

figure;
% Draw a scatter plot of the flu frequencies for the
% two regions with the lowest correlation
scatter(X(:,minCorrRegionCol1), X(:,minCorrRegionCol2), 10);
xlabel(['Weekly flu frequencies for ', minCorrRegionName1]);
ylabel(['Weekly flu frequencies for ', minCorrRegionName2]);
title(['Scatter plot between two lowest-correlation regions']);
