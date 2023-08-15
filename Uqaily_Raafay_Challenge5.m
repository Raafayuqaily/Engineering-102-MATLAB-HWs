%Challenge 5
%Raafay Uqaily

%Problem 1
syms t %Creates a symbolic variable t

f = (4*cos((2/3)*pi*t))+(3*sin((3/2)*pi*t)); %Defines a function that uses the symbolic variable t
fp = diff(f); %Calculates the first derivative of f
fpp = diff(fp); %Calculates the second derivative of f

hold on
fplot(f,[0 3]) %Plots f with given range
fplot(fp, [0 3]) %Plots fp with given range
fplot(fpp, [0 3]) %Plots fpp with given range
xlabel('X-values') %Labels x-axis
ylabel('Y-labels') %Labels y-axis
legend('f(t)','fp(t)','fpp(t)') %Creates a legend
title('Plot of f(t) along with its derivatives') %Creates a title
hold off

h = (3*t^5)-(5*t^2)+(7/t)+(sqrt(t)); %Defines a function that uses the symbolic variable t
hp = diff(h); %Calculates the first derivative of h
hpp = diff(hp); %Calculates the second derivative of h

figure(2)
hold on
fplot(h,[0.5 5]) %Plots h with given range
fplot(hp, [0.5 5]) %Plots hp with given range
fplot(hpp, [0.5 5]) %Plots hpp with given range
xlabel('X-values') %Labels x-axis
ylabel('Y-labels') %Labels y-axis
legend('h(t)','hp(t)','hpp(t)') %Creates a legend
title('Plot of h(t) along with its derivatives') %Creates a title
hold off

%Problem 2
syms w0 x L %Creates the following symbolic variables

w = -(w0/L^2)*x*(x-(2*L)); %Defines w as a function of x

R = int(w,x,[0 L]); %Calculates the resultant force by integrating w with respect to x
fprintf('The resultant force is: %s\n',R)

X = ((int(x*w,x,[0 L]))/R); %Calculates the integral of x*w with respect to x from 0 to L

pretty(X) %Pretty prints the symbolic expression

subs(X,L,36) %Replaces 36 for L in the integral 

%Problem 3
syms x %Creates a symbolic variable x

s1 = x^2*(x^3-(4*x^2)+(3*x)+12)-40*(x-1); %Defines s1 as a function of x

s2 = (x^2-(2*x)+4)*(x+2); %Defines s2 as a function of x

a = simplify(s1*s2); %Simplifies each element of the symbolic variable a
b = simplify(s1/s2); %Simplifies each element of the symbolic variable b
c = simplify(s1-s2); %Simplifies each element of the symbolic variable c

fprintf('Simplified symbolic variable a is: %s\n',a) %Displays output neatly
fprintf('Simplified symbolic variable b is: %s\n',b) %Displays output neatly
fprintf('Simplified symbolic variable c is: %s\n',c) %Displays output neatly

subs(c,x,6) %Replaces 6 for x in the symbolic variable c 


%I am usually anxious about approaching professors, but you made it simple
%and casual. Thank you Mr. Brewster for being such an understanding and 
%patient ENGR 102 Professor!! I hope you have an amazing summer break



 
