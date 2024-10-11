% Author Name: Rylan O'Brien
% Email: robrien17@rowan.edu
% Created On 10/2/2024
% Updated On 9/_/2024
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 1
% Date: [Submission Date]
% All Rights Reserved - MIT License


% Read stock data from 'stock_data.txt'
fileID = fopen('stock_data.txt','r'); 
stock_prices = fscanf(fileID,'%f', [1 Inf]);
fclose(fileID);

% calculate the required data 

average_price = mean(stock_prices);
highest_price = max(stock_prices);
lowest_price = min(stock_prices);

% Calculate the number of days the stock price increased
increased_days = sum(diff(stock_prices) > 0);

% Display the results
fprintf('Average closing price: %.2f\n', average_price);
fprintf('Highest closing price: %.2f\n', highest_price);
fprintf('Lowest closing price: %.2f\n', lowest_price);
fprintf('Number of days price increased: %d\n', increased_days);

% Create a line plot
figure;
plot(stock_prices, '-o', 'LineWidth', 1.5);
hold on;

% Add horizontal lines for average, highest, and lowest prices
yline(average_price, 'g--', 'Average Price', 'LineWidth', 1.5);
yline(highest_price, 'r--', 'Highest Price', 'LineWidth', 1.5);
yline(lowest_price, 'b--', 'Lowest Price', 'LineWidth', 1.5);

% Add labels and title
xlabel('Days');
ylabel('Closing Price');
title('Daily Closing Prices of the Stock');
legend('Closing Prices', 'Average Price', 'Highest Price', 'Lowest Price');
grid on

%Save the plot as 'stock_analysis.png'
saveas(gcf, 'stock_analysis.png');

% Write summary to 'stock_summary.txt'
fileID = fopen('stock_summary.txt', 'w');
fprintf(fileID, 'Stock Analysis Summary\n');
fprintf(fileID, '----------------------\n');
fprintf(fileID, 'Average closing price: %.2f\n', average_price);
fprintf(fileID, 'Highest closing price: %.2f\n', highest_price);
fprintf(fileID, 'Lowest closing price: %.2f\n', lowest_price);
fprintf(fileID, 'Number of days price increased: %d\n', increased_days);
fclose(fileID);

% end of stock analysis code