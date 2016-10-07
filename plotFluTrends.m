% Generates a simple XY plot of Google Flu Trends data
% for the United States in 2013.
[X, regionNames] = loadFluTrendsData();

figure;
% Plot estimated flu frequencies separately for each region
plot(X);
xlabel('Week'); ylabel('Estimated illness frequencies');
title('Estimated influenza-like illness frequencies for each region');
legend(regionNames);
