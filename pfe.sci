//********************************************
// Computes the partial fraction expansion
// of a STRICTLY PROPER rational function by using
// the residu command
// TODO --> add support for improper funcitons -- BETA
//********************************************

function pfe (expression)
    x = poly (0,'x');

    n = numer (expression);
    d = denom (expression);

    k = 0;

    while degree (n) >= degree (d)
        [temp , n] = pdiv (n,d);
        k = k + temp;
    end

    den_roots = roots (d);

    if k ~= 0 then
        disp (k);
        mprintf ('\n\t+\n')
    end

    for index = 1: degree (d)
        new_den_roots = den_roots;
        new_den_roots (index) = [];
        a = residu (n,x-den_roots (index),poly (new_den_roots,'x'));
        disp (a / (x-den_roots (index)))
        
        if index ~= degree (d) then mprintf ('\n\t+\n')
        end
        
    end

endfunction
