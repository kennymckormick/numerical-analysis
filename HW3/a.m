function [fct1] = a(x,x0,x1)
    fct1 = (x-x0)/(x1-x0);
    fct1 = fct1*2 +1;
    fct1 = fct1 * ((x-x1)/(x0-x1))^2;