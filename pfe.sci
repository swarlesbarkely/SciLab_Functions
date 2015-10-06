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

	if degree (d) <= 0 then 
		
		mprintf ("Error! Degree of denominator cannot be 0")
		abort
		
	end
	
    k = 0;

	// Take special action if fraction is improper
    while degree (n) >= degree (d)
        [temp , n] = pdiv (n,d);
        k = k + temp;
    end

    den_roots = roots (d);

    if k ~= 0 then
    	// Fraction was improper -- display what was factored out
        disp (k);
        mprintf ('\n\t+\n')
    end

	// Print out result
    for index = 1: degree (d)
        new_den_roots = den_roots;
        new_den_roots (index) = [];
        
        // Find residue at this root of the denominator
        r = residu (n,x-den_roots (index),poly (new_den_roots,'x'));
        disp (r / (x-den_roots (index)))
        
        if index ~= degree (d) then 
        	// Not at the end --> Print a "+"
        	mprintf ('\n\t+\n')
        end
        
    end

endfunction
