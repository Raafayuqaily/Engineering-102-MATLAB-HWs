function [x1] = Uqaily_Raafay_HW09_Q7(x0)
%Uqaily_Raafay_HW09_Q7 has an output x1 for input x0
%   x1 = x0 - ((f(x0))/(f'(x0)))
%   x0 = the users initial guess for the root of the function
%   f(x) is x^2 + 5 and so f'(x) is 2x
x1 = x0 - ((x0)^2-5)/(2*(x0));
end

