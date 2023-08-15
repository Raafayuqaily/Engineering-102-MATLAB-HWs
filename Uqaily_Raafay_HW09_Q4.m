function [x1, x2] = Uqaily_Raafay_HW09_Q4(a,b,c)
%Uqaily_Raafay_HW09_Q4 gives the roots of the given quadratic equation in the form a*x^2 + b*x + c =0.
%Coefficient of x^2 = a, Coefficient of x = b, constant term = c
%The equation gives the two roots for the quadratic equation
x1 = (-b+ sqrt(b^2 - 4*a*c))/(2*a);
x2 = (-b- sqrt(b^2 - 4*a*c))/(2*a);
end


