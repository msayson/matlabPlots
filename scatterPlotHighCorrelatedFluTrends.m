% Uses Google Flu Trends data for the United States in 2013.

% Generates a scatter plot of estimated flu
% frequencies for the two regions with the highest correlation.
[X, regionNames] = loadFluTrendsData();
numRegions = length(regionNames);

% Correlations stores the pairwise correlations between
% every two regions (sides of the diagonal are equivalent)

% Set the diagonal to zero in order to calculate the max
% correlation between *distinct* regions (since every
% region has a correlation of 1 with itself)
Correlations = corr(X) - eye(numRegions, numRegions);
% Calculate the maximum correlation between distinct regions
maxCorr = max(max(Correlations));
% Find the pair with the maximum correlation
[maxRow, maxCol] = find(Correlations == maxCorr, 1);
% Get the names of the regions with maximum correlation
maxCorrRegionName1 = regionNames(maxRow)
maxCorrRegionName2 = regionNames(maxCol)

figure;
% Draw a scatter plot of the flu frequencies for the
% two regions with the highest correlation
scatter(X(:,maxRow), X(:,maxCol), 10);
xlabel(['Weekly flu frequencies for ', maxCorrRegionName1]);
ylabel(['Weekly flu frequencies for ', maxCorrRegionName2]);
title(['Scatter plot between two highest-correlation regions']);
