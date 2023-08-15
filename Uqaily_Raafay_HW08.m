% Homework 8
% Problem 1 
initial_balance = 1000; 
target_balance = 10000;
deposit = 100; % Amount deposited every month
interest_rate = 0.05/12; % Monthly interest rate
months = 0; % number of months
% the loop will continue until the user has accumulated at least target balance
while initial_balance < target_balance
    months = months + 1;
    initial_balance(months+1) = initial_balance(months)+(initial_balance(months)*interest_rate);
    initial_balance(months+1) = initial_balance(months+1) + deposit;
end
fprintf('It will take %d months to reach the goal of $%.2f\n',months,target_balance);
% Number of years
years = months/12;
% Remaining months
months = months-(years*12);
% display the output in terms of years
if(months > 0)
fprintf('Number of years : %d and %d months\n',years,months);
else
fprintf('Number of years : %d \n',years);
end

% Display months and monthly initial_balance
fprintf('%-20s%-20s\n','Month','initial_balance');
for i=2:length(initial_balance)
fprintf('%-20d%-10.2f\n',i-1,initial_balance(i));
end

% plot a bar graph
bar((1:length(initial_balance)-1),initial_balance(2:length(initial_balance)));
title('Monthly Initial Balance');
xlabel('Months');
ylabel('Initial Balance');

% Problem 2 
x=input('Enter value for x: ');
T1=1;
n=1;
while(T1>0.0001&&n<30)
    T1=x^n/factorial(n);
    n=n+1;
end
fprintf('The number of terms is %d and the value of the nth term is %f \n',n,T1);

% Problem 3 
% upwards height and velocity is positive
V0 = 200;
G = -32.2;
H0 = 0;
Vc = 20; % constant velocity after t = 9 seconds
H9 = H0 + V0*9 + (1/2)*G*9^2; % height attained after 9 seconds
T = 9 + (H9/20) % Total time of flight
t = 0:0.001:T;
for(j=1:length(t))
if(t(j)<=9)
% V(t) and H(t) for t<9
Vt(j) = V0 + G*t(j);
Ht(j) = H0 + V0*t(j) + (1/2)*G*t(j)^2;
else
% V(t) and H(t) for t>9
Vt(j) = Vc;
Ht(j) = H9 - Vc*(t(j)-9);
end
end
figure(2)
plot(t,Vt,'r',t,Ht,'b')
xlabel('Time');
ylabel('Functions');
legend('Velocity','Height')