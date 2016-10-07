% Loads Google Flu Trends data for United States 2013.
% Data Source: Google Flu Trends (https://www.google.org/flutrends)
% Uses the updated flu trends model released in October 2014.

% X(i,j) is the estimated flu frequency in week i for region j,
%   where each region corresponds to a numbered region of the
%   U.S. Department of Health & Human Services (HHS).
% regionNames: region names corresponding to each column of X.
function [X, regions] = loadFluTrendsData()
  rawImportData = importdata('googleFluTrendsData_US2013.txt', ',');
  X = rawImportData.data(:,2:11);
  regions = {'Region 1','Region 2','Region 3','Region 4','Region 5','Region 6','Region 7','Region 8','Region 9','Region 10'};
end
