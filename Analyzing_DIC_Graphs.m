%%-------------------Clear/Directory/Variables-----------------------------

clear all, close all %Clearing stuff and changing directory
cd('C:\Users\Garrett\Google Drive\Documents\School\Bockman Research Lab\DIC Data\RawData');

time = linspace(0, 312, 472) %"time" is a vector of the critical period

%"raw" is the full array of values
raw = importdata('190503 Precision Test') %[CHANGE THE PINK TEXT]

save('Plot Variables', 'time', 'raw') %Saves the variables
%% Plot with all the graphs!

load('Plot Variables')
%Create variable of amount of rows of this matrix
numrow = size(raw.data, 1);

%Creates plot by going through each row (until the max amount of rows) and
%pulls out part of 
figure(1);
hold on,
for i = 1:numrow;
    plot(raw.data(i, 160:631));
end

%% Plot of Single graph

load('Plot Variables')

figure(2)
plot(time, raw.data(5, 160:631)); %Change the "1" to 


