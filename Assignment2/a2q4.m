clc 
clear all
close all

syms z n;

a = 5;
xz = z/(z-a)
xn = iztrans(xz);
xn = simplify(xn)

% for a
disp('For property a :')
lhs = simplify(ztrans((a^n)*xn))
rhs = simplify(subs(xz, z, (z/a)))

% for b
% will not work, as property is valid only for bilateral
disp('For property b :')
n0 = 2
lhs = simplify(ztrans(subs(xn, n, (n-n0))))
rhs = simplify((z^(-n0))*xz)

% for c
disp('For property c :')
lhs = simplify(ztrans(n*xn))
rhs = simplify(-z*diff(xz))