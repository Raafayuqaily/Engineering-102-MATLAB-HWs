%Homework 7
%%Problem 1
k = 1;
m = 1;
n = 1;
for x = -4:0.1:3
    if x <= -3
        X1(k) = x;
        y1(k) = 3/x;
        k=k+1;
    elseif x <= 2
        X2(m) = x;
        y2(m) = (3^x)-3;
       m=m+1;
    else
        X3(n) = x; 
        y3(n) = (x-3)^2;
      n=n+1;
        
    end 
end
figure(1)
hold on
plot(X1,y1,'r')
plot(X2,y2,'g')
plot(X3,y3,'b')
hold off
%title('Piecewise Function')
%xlabel('x values')
%ylabel('y values')
legend('3/x','3^x-2','(x-3)^2')

%%Problem 2
P = input('Enter value for the principal: ');
r = input('Enter the interest rate per month, which equals the annual interest rate divided by 12: ');
n = input('Enter the total number of months: ');
PMT = P * (r*(1+r)^n)/(((1+r)^n)-1)
fprintf('Month \t \t Balance \n');
for i=1:n
    bal = PMT*(n)-i*PMT;
    fprintf('%d \t \t $%.2f \n\n',i, bal);
end 

%%Problem 3
v = zeros(5,2);
for i=1:size(v,1)
    for j=1:size(v,2)
        v(i,j) = (i+j)/(j^2);
    end
end
disp(v);

%%Problem 4 
rep = 10;
x = zeros(1,rep);
y = zeros(1,rep);
for i = 2:rep
    rule = randi([1 3]);
    switch rule 
        case 1
            x(i) = 0.5*x (i-1);
            y(i) = 0.5*y (i-1);
        case 2
            x(i) = 0.5*x (i-1) + 0.25;
            y(i) = 0.5*y (i-1) + sqrt(3)/4;
        case 3
            x(i) = 0.5*x (i-1) + 0.5;
            y(i) = 0.5*y (i-1);
    end 
end 
figure(2)
plot(x,y,'.')
title('Sierpinski''s Triangle')
%xlabel('x values')
%ylabel('y values')

rep = 100;
x = zeros(1,rep);
y = zeros(1,rep);
for i = 2:rep
    rule = randi([1 3]);
    switch rule 
        case 1
            x(i) = 0.5*x (i-1);
            y(i) = 0.5*y (i-1);
        case 2
            x(i) = 0.5*x (i-1) + 0.25;
            y(i) = 0.5*y (i-1) + sqrt(3)/4;
        case 3
            x(i) = 0.5*x (i-1) + 0.5;
            y(i) = 0.5*y (i-1);
    end 
end 
figure(3)
plot(x,y,'.')
title('Sierpinski''s Triangle')
%xlabel('x values')
%ylabel('y values')

rep = 1000;
x = zeros(1,rep);
y = zeros(1,rep);
for i = 2:rep
    rule = randi([1 3]);
    switch rule 
        case 1
            x(i) = 0.5*x (i-1);
            y(i) = 0.5*y (i-1);
        case 2
            x(i) = 0.5*x (i-1) + 0.25;
            y(i) = 0.5*y (i-1) + sqrt(3)/4;
        case 3
            x(i) = 0.5*x (i-1) + 0.5;
            y(i) = 0.5*y (i-1);
    end 
end 
figure(4)
plot(x,y,'.')
title('Sierpinski''s Triangle')
%xlabel('x values')
%ylabel('y values')

rep = 10000;
x = zeros(1,rep);
y = zeros(1,rep);
for i = 2:rep
    rule = randi([1 3]);
    switch rule 
        case 1
            x(i) = 0.5*x (i-1);
            y(i) = 0.5*y (i-1);
        case 2
            x(i) = 0.5*x (i-1) + 0.25;
            y(i) = 0.5*y (i-1) + sqrt(3)/4;
        case 3
            x(i) = 0.5*x (i-1) + 0.5;
            y(i) = 0.5*y (i-1);
    end 
end 
figure(5)
plot(x,y,'.')
title('Sierpinski''s Triangle')
%xlabel('x values')
%ylabel('y values')

