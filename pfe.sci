//********************************************
// Computes the partial fraction expansion
// of a STRICTLY PROPER rational function by using
// the residu command
// TODO --> add support for improper funcitons
//********************************************

function pfe (expression)
    x = poly (0,'x');
    
    n = numer (expression);
    d = denom (expression);
    
    den_roots = roots (d);
    
    for i = 1: degree (d)
        new_den_roots = den_roots;
        new_den_roots (i) = [];
        a (i) = residu (n,x-den_roots (i),poly (new_den_roots,'x'));
        disp (a (i) / (x-den_roots (i)))
    end
    
endfunction
