% Author Name: Rylan O'Brien
% Email: robrien17@rowan.edu
% Created On 10/2/2024
% Updated On 9/_/2024
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 1
% Date: [Submission Date]
% All Rights Reserved - MIT License

%This code is a population growth analysis model for a given dataset 
% It will displayu the population and growth rate in a table 

% population vector with given data 
population = [5000, 5200, 5350, 5600, 5800];

% Calculates the growth rate 
growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1)*100;

% combines the vectors into a matrix
pop_data = [population; [0 growth_rate]]; 

% displays each years population and its growth rate 

fprintf('Year\tPopulation\tGrowth Rate\n');
for i = 1:length(population)
    if isnan(pop_data(2, i))
        fprintf('%d\t%d\t\tN/A\n', i, pop_data(1, i));
    else
        fprintf('%d\t%d\t\t%.2f%%\n', i, pop_data(1, i), pop_data(2, i));
    end
end