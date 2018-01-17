function [t] = b(x,x0,x1)
    t=(x-x0)*((x-x1)/(x0-x1))^2;