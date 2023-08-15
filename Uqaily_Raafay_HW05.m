% Homework 5
% Problem 1 

m1 = [1 2 3];
m2 = [0 4 5];
m3 = [1 0 6];
m = [m1; m2; m3]
d = det(m)
mt = m'
mv = inv(m)
mm = m.*mv

% Problem 2 

a = [3 -10 -5 30; 4 7 5 -3; 0 1 1 -3; 1 -2 -10 6];
b = [-1 0 1 -1]';
x = inv(a)*b
% the values of x1,x2,x3,and x4 are in order as entered in the matrix
fprintf('x1 has a value %f, x2 has a value %f, x3 has a value %f, and x4 has a value %f', x(1), x(2), x(3), x(4))

% Problem 3
za = zeros(3);
ob = ones(3,6);
ec = eye(6);
zoe = [za ob; ec ob']