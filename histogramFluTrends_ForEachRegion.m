% Generates a histogram of Google Flu Trends data
% for the United States in 2013.
[X, regionNames] = loadFluTrendsData();

figure;
% Display side-by-side histograms of illness
% frequencies for each region.
hist(X);
xlabel('Estimated flu-like illness frequencies');
ylabel('Number of occurrences of that frequency');
newLineCode = 10;
title(['Frequencies of estimated influenza-like', newLineCode, 'illness percentages for each region']);
legend(regionNames);
