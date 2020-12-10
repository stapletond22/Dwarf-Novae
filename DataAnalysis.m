%%
%All Fits below performed with each other fit commented out. Each begins
%with reading in and then plotting the data. Choosing which data to fit is
%done using idx command and observing plot of data. Curve-fitting tool then
%used to fit the data with a gaussian. Each B data is the y-valued
%magnitudes which include a factor of -n where n is some number multipled
%by -1 for normalization to fit a gaussian to. 

%%
%First Fit: CV6
CV6 = importdata('PTFS1117an_CV6_L3.dat', ' ',21) %Read-in data
A = CV6.data(:,5);
B = CV6.data(:,6);

plot(A,B,'.') %Plot 
set(gca, 'YDir','reverse')
ylim([14,17])
title('PTFS1117an Magnitude Data')
xlabel('Epoch (JD)')
ylabel('Magnitude')

%Grab range of data points at peak of third apparent nova (~928)
idx = find((A)>919.4);
out = A(idx);
%Fitting Gaussian to 7 data point segment of third peak
A3 = CV6.data(109:115,5);
B3 = (CV6.data(109:115,6)-16.5)*-1;
C3 = CV6.data(109:115,7);

%Grab range of data points at peak of second apparent nova (~550)
idx = find(A>547.4);
out = A(idx);
%Fitting Gaussian to 5 data point segment of second peak
A2 = CV6.data(76:80,5);
B2 = (CV6.data(76:80,6)-17)*-1;
C2 = CV6.data(76:80,7);


%Grabbing baseline data points to estimate base-luminosity
idx = find(A>506.4);
out = A(idx);
Q = CV6.data(58:63,6)
Base = mean(Q)
UncBase = sqrt(sum((Q-Base).^2)/(length(Q)-1))

%%
%Second Fit: CV4
CV4 = importdata('PTFS1115am_CV4_L3.dat', ' ',21) %Read-in data
A = CV4.data(:,5);
B = CV4.data(:,6);

plot(A,B,'.') %Plot 
set(gca, 'YDir','reverse')

%Grab range of data points at peak of second apparent nova (~1534)
idx = find((A)>1532);
out = A(idx);
%Fitting Gaussian to 7 data point segment of third peak
A3 = CV4.data(434:440,5);
B3 = ((CV4.data(434:440,6))-12.65)*-1;
C3 = CV4.data(434:440,7);

%Grab range of data points at peak of third apparent nova (~2000)
idx = find(A>1996);
out = A(idx);
%Fitting Gaussian to 5 data point segment of second peak
A2 = CV4.data(813:817,5);
B2 = (CV4.data(813:817,6)-16.25)*-1;
C2 = CV4.data(813:817,7);

%Grabbing baseline data points to estimate base-luminosity
idx = find(A>1960)
out = A(idx)
Q = CV4.data(757:762,6)
Base = mean(Q)
UncBase = sqrt(sum((Q-Base).^2)/(length(Q)-1))

%%
%Third Fit: CV3
CV3 = importdata('PTFS1110l_CV3_L2.dat', ' ',21) %Read-in data
A = CV3.data(:,5);
B = CV3.data(:,6);

plot(A,B,'.') %Plot 
set(gca, 'YDir','reverse')
%Grab range of data points at peak of second first nova (~400)
idx = find((A)>371);
out = A(idx);
%Fitting Gaussian to 5 data point segment of first peak
A3 = CV3.data(65:71,5);
B3 = ((CV3.data(65:71,6))-17.4)*-1;
C3 = CV3.data(65:71,7);


%Grab range of data points at peak of third apparent nova (~695)
idx = find(A>686);
out = A(idx);
%Fitting Gaussian to 5 data point segment of second peak
A2 = CV3.data(91:98,5);
B2 = (CV3.data(91:98,6)-17.2)*-1;
C2 = CV3.data(91:98,7);

%Grabbing baseline data points to estimate base-luminosity
idx = find(A>447);
out = A(idx);
Q = CV3.data(71:80,6)
Base = mean(Q)
UncBase = sqrt(sum((Q-Base).^2)/(length(Q)-1))

%%
%Fourth Fit: DN2
DN7 = importdata('PTFS1122ah_DN2.dat', ' ',21) %Read-in data
A = DN7.data(:,5);
B = DN7.data(:,6);

plot(A,B,'.') %Plot 
set(gca, 'YDir','reverse')

%Grab range of data points at peak of first apparent nova (~200)
idx = find((A)>194)
out = A(idx)
%Fitting Gaussian to 6 data point segment of first peak
A3 = DN7.data(3:8,5)
B3 = ((DN7.data(3:8,6))-18.3)*-1
C3 = DN7.data(3:8,7)


%Grab range of data points at peak of second apparent nova (~600)
idx = find(A>597)
out = A(idx)
%Fitting Gaussian to 6 data point segment of second peak
A2 = DN7.data(10:15,5);
B2 = (DN7.data(10:15,6)-18.04)*-1;
C2 = DN7.data(10:15,7);

%Grabbing baseline data points to estimate base-luminosity
idx = find(A>620)
out = A(idx)
Q = DN7.data(16:19,6)
Base = mean(Q)
UncBase = sqrt(sum((Q-Base).^2)/(length(Q)-1))

%%
%Fifth Fit: DN3
DN3 = importdata('PTFS1423f_DN3.dat', ' ',21) %Read-in data
A = DN3.data(:,5);
B = DN3.data(:,6);

plot(A,B,'.') %Plot 
set(gca, 'YDir','reverse')

%Grab range of data points at peak of first apparent nova (~200)
idx = find((A)>175)
out = A(idx)
%Fitting Gaussian to 5 data point segment of first peak
A3 = DN3.data(1:5,5);
B3 = ((DN3.data(1:5,6))-15.75)*-1;
C3 = DN3.data(1:5,7);


%Grab range of data points at peak of second apparent nova (~600)
idx = find(A>641);
out = A(idx);
%Fitting Gaussian to 5 data point segment of second peak
A2 = DN3.data(39:43,5);
B2 = (DN3.data(39:43,6)-15.91)*-1;
C2 = DN3.data(39:43,7);

%Grabbing baseline data points to estimate base-luminosity
idx = find(A>586)
out = A(idx)
Q = DN3.data(15:21,6)
Base = mean(Q)
UncBase = sqrt(sum((Q-Base).^2)/(length(Q)-1))

%%
%Sixth Fit: DN4
figure(2)
DN4 = importdata('PTFS1502z_DN4.dat', ' ',21) %Read-in data
A = DN4.data(:,5);
B = DN4.data(:,6);

plot(A,B,'.') %Plot 
set(gca, 'YDir','reverse')
ylim([15,21])
title('PTFS1502z Magnitude Data')
xlabel('Epoch (JD)')
ylabel('Magnitude')

%Grab range of data points at peak of first apparent nova (~1620)
idx = find((A)>1622)
out = A(idx)
%Fitting Gaussian to 7 data point segment of first peak
A3 = DN4.data(35:43,5);
B3 = ((DN4.data(35:43,6))-19.4)*-1;
C3 = DN4.data(35:43,7);


%Grab range of data points at peak of second apparent nova (~1770)
idx = find(A>1763)
out = A(idx)
%Fitting Gaussian to 6 data point segment of second peak
A2 = DN4.data(141:146,5);
B2 = (DN4.data(141:146,6)-19.7)*-1;
C2 = DN4.data(141:146,7);

%Grabbing baseline data points to estimate base-luminosity
idx = find(A>1715)
out = A(idx)
Q = DN4.data(108:115,6)
Base = mean(Q)
UncBase = sqrt(sum((Q-Base).^2)/(length(Q)-1))

%%
%Seven Fit: DN7
DN7 = importdata('PTFS1707e_DN7.dat', ' ',21) %Read-in data
A = DN7.data(:,5);
B = DN7.data(:,6);

plot(A,B,'.') %Plot 
set(gca, 'YDir','reverse')
%Grab range of data points at peak of first apparent nova (~2260)
idx = find((A)>2237);
idx2 = 5:64;
out = B(idx2);
%Fitting Gaussian to 4 data point segment of first peak
A3 = DN7.data([19,21,23,25],5);
B3 = ((DN7.data([19,21,23,25],6))-15.68)*-1;
C3 = DN7.data([19,21,23,25],7);


%Grab range of data points at peak of second apparent nova (~2515)
idx = find(A>2510);
idx2 = 27:39;
out = A(idx);
out = B(idx2);
%Fitting Gaussian to 4 data point segment of second peak
A2 = DN7.data([32,34,36,38],5);
B2 = (DN7.data([32,34,36,38],6)-15.83)*-1;
C2 = DN7.data([32,34,36,38],7);

%Grabbing baseline data points to estimate base-luminosity
idx = find(A>2589)
out = A(idx)
idx2 = 51:64
out = B(idx2)
Q = DN7.data([51,53,55,57,59,61,63],6)
Base = mean(Q)
UncBase = sqrt(sum((Q-Base).^2)/(length(Q)-1))
%%
%Eigth Fit: DN5
DN5 = importdata('PTFS1516bg_DN5.dat', ' ',21) %Read-in data
A = DN5.data(:,5);
B = DN5.data(:,6);

plot(A,B,'.') %Plot 
set(gca, 'YDir','reverse')
Grab range of data points at peak of first apparent nova (~650)
idx = find((A)>640);
out = A(idx);
%Fitting Gaussian to 6 data point segment of first peak
A3 = DN5.data(78:83,5);
B3 = ((DN5.data(78:83,6))-13.8)*-1;
C3 = DN5.data(78:83,7);


%Grab range of data points at peak of second apparent nova (~875)
idx = find(A>839)
out = A(idx)
%Fitting Gaussian to 4 data point segment of second peak
A2 = DN5.data(93:96,5);
B2 = (DN5.data(93:96,6)-12.88)*-1;
C2 = DN5.data(93:96,7);

%Grabbing baseline data points to estimate base-luminosity
idx = find(A>2589)
out = A(idx)
idx2 = 51:64
out = B(idx2)
Q = DN5.data(75:79,6)
Base = mean(Q)
UncBase = sqrt(sum((Q-Base).^2)/(length(Q)-1))

%%
%Linear fit plot data
T = [389.5,473.1,142,258,464,285,378.6]
sigT = [5.5,4.36,1.05,7.21,0.47,5.01,0.312]
m = [2.943,0.453,3.936,2.75,5.49,4.84,2.439]
sigm = [0.315,0.087,0.373,1.64,1.5,0.64,0.162]