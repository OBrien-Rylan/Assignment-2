% Author Name: Rylan O'Brien
% Email: robrien17@rowan.edu
% Created On 10/2/2024
% Updated On 9/_/2024
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 1
% Date: [Submission Date]
% All Rights Reserved - MIT License

% weather_analysis

% Read data from 'weather_data.txt' into a table
data = readtable('weather_data.txt');

% Extract numerical data
temperature = data.Temperature;   % Temperature column
humidity = data.Humidity;         % Humidity column
precipitation = data.Precipitation; % Precipitation column

% Calculate data
average_temperature = mean(temperature);
average_humidity = mean(humidity);
total_precipitation = sum(precipitation);

%Save data to 'weather_summary.txt'
summary = {
    'Weather Summary';
    '-----------------';
    sprintf('Average Temperature: %.2f°C', average_temperature);
    sprintf('Average Humidity: %.2f%%', average_humidity);
    sprintf('Total Precipitation: %.2f mm', total_precipitation)
};

% Write to file
fileID = fopen('weather_summary.txt', 'w');
fprintf(fileID, '%s\n', summary{:});
fclose(fileID);

% end of weather analysis code