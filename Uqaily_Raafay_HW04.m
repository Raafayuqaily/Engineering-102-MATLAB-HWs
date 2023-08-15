
% Homework 4
% Problem 1 
x = linspace(0,(2*pi),250);
figure(1);
plot(sin(x), 'color','r', 'linewidth', 2)
hold on
plot(2*sin(x), 'color', 'b', 'linestyle', ':', 'linewidth', 2)
plot(sin(2*x), 'color', 'g', 'linestyle', '--', 'linewidth', 2)
hold off
title('Problem 1 Graph')
xlabel('X Values')
ylabel('Y Values')
legend('sin(x)','2*sin(x)','sin(2*x)')

% Problem 2
a = input('Enter a value for variable a:   ');
b = input('Enter a value for variable b:   ');
c = input('Enter a value for variable c:   ');
x1 = (-b+sqrt(b^2-(4*a*c)))/(2*a);
x2 = (-b-sqrt(b^2-(4*a*c)))/(2*a);
fprintf('The value for x1 is %6.2f and the value for x2 is %6.2f \n' , x1, x2);

% Problem 3
P = 100000;
y = 30;
r = 0.05;
M1 = (P*(r/12))/(1-(1+(r/12))^(-12*y))
r = 0.03;
M2 = (P*(r/12))/(1-(1+(r/12))^(-12*y))
P = input('Enter a value for loan amount in dollars:   ');
y = input('Enter a value for years:   ');
r = input('Enter a value for interest rate in decimal form:   ');
M3 = (P*(r/12))/(1-(1+(r/12))^(-12*y));
fprintf('For a loan amount of $%6.2f at a rate of %6.2f%% for %6.2f years, the monthly payment is $%6.2f. \n', P, r, y, M3);
    
% Problem 4 
t = linspace(0,(2*pi),100);
figure(2)
x = 1.5*sin(5*t);
y = 1.5*cos(3*t);
plot(x,y)
axis([-2 2 -2 2])
title('Problem 4 Graph')
xlabel('X')
ylabel('Y')