% Generates a histogram of Google Flu Trends data
% for the United States in 2013.
[X, ~] = loadFluTrendsData();

figure;
% Combines all regions to show a simple view of
% overall frequencies across the data set.
hist(X(:));
xlabel('Estimated flu-like illness frequencies across U.S.');
ylabel('Number of occurrences of that frequency');
codeForNewLine = 10;
title(['Frequencies of influenza-like illness', codeForNewLine, 'percentages across weeks and regions']);
