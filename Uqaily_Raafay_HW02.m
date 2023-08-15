%Homework 2

%Problem 1
a=4;
b=10;

%Problem 1a
P=2*pi*(sqrt(1/2*(a^2+b^2)))

%Problem 1b
b=sqrt(1.8*(30/(2*pi))^2)
a=(b/3)

%Problem 2
a=5;
b=7;
y=25;

%Problem 2a
c = sqrt(a^2+b^2-(2*a*b*cosd(y)))

%Problem 2b
angleA = asind(sind(y)/c*a)
angleB = 180-asind((b*sind(y))/c)

%Problem 2c
%lawOfTangents = 
verifyA = ((a-b)/(a+b)) 
verifyB = tand(1/2*(angleA-angleB))/tand(1/2*(angleA+angleB))
verifyA == verifyB

%Problem 3
length = a;
width = a/2;
height = a/3;
sphereV = (4/3)*pi*(sphereR^3);
sphereSA = 4*pi*sphereR^2;

%Problem 3a
prismV = sphereV;
a = nthroot((6*prismV),3)

%Problem 3b 
prismSA = sphereSA;
a = nthroot((prismSA/2),2)

%Problem 4
l = 4;
theta = 35;
coneR = l*sind(theta/2);
coneH = l*cosd(theta/2);
coneV = (1/3)*pi*(coneR^2)*(coneH);
hemV = (2/3)*pi*(coneR^3);
icecreamV = coneV + hemV
