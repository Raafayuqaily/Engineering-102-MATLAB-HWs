% Homework 3
% Problem 1
vectora = (0:2:12);
vectorb = linspace(9,0,4);
finalvector = [vectora, vectorb]

% Problem 2
columnvector = (10:-2:0)'

% Problem 3
x = (20:10:70);
(2*sind(x).*cosd(x).^2)./sind(x)

% Problem 4
Ts=65;
T0=99;
k=0.25;
t= (0:0.1:10);
Cooling = Ts+(T0-Ts)*exp(-k.*t)
