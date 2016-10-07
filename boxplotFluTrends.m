% Generates box plots of Google Flu Trends data
% for the United States in 2013.

% Each box plot represents quartiles for estimated
% flu frequencies across regions.
[X, ~] = loadFluTrendsData();

figure;
% Plot the transpose of X to use weeks as the x-axis
% and collect frequencies across states for box plot data points.
boxplot(X');
% Mark every 4th week on the x-axis to minimize clutter.
xTicks = 4 * [1:size(X, 1)/4];
set(gca, 'xtick', xTicks, 'xticklabel', xTicks);
xlabel('Week'); ylabel('Estimated illness frequencies');
title('Estimated influenza-like illness frequencies across regions');
