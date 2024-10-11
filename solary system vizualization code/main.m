% Author Name: Rylan O'Brien
% Email: robrien17@rowan.edu
% Created On 10/2/2024
% Updated On 9/_/2024
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 1
% Date: [Submission Date]
% All Rights Reserved - MIT License

% start of the solar system vizualization code

% vector for the names of each planet
planet_names = {'Mercury','Venus','Earth','Mars','Jupiter','Saturn','Uranus','Neptune'};

% vector for distance of each planet from the sun in AU (Earth = 1 AU)
planet_distances = [0.39, 0.72, 1.00, 1.52, 5.20, 9.58, 19.2, 30.1]; 

% vector for the size of each planet realative to Earth in AU(Earth= 1AU)
planet_sizes = [0.38, 0.72, 1.00, 0.53, 11.2, 9.45, 4.01, 3.88]; 

% creation of a figure 
figure; 

%scatter plot of planet distances vs planet sizes 
subplot(1, 2, 1);
scatter(planet_distances, planet_sizes, planet_sizes * 100,'filled'); 
title('Planet Sizes vs Distances from sun'); 
xlabel('Distance from Sun (AU)');
ylabel('Relative Size (Earth=1)'); 
grid on; 
set(gca,'XLim', [0 35]); 

% Labels of each planet 
for i = 1:length(planet_distances)
    text(planet_distances(i)+ 0.5, planet_sizes(i),planet_names{i});
end

% bar chart of planets' distances 
subplot(1, 2, 2); 
bar(planet_distances)
title('Planet Distances from the Sun');
xlabel('Planet');
ylabel('Distance fromSun (AU)');
xticklabels(planet_names);
grid on; 

% adjust figure layout and appearance 
sgtitle('Solar System Vizualization'); 

% save as an image file 
saveas(gcf,'solar_system_vizualization.png'); 

% end of solar system vizualization