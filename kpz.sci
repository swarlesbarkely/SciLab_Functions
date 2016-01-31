//***************************************************
// Displays the DC gain, poles, and zeros (see note)
// of a linear system. Similar to Matlab function zpk
//
// Inputs:	Linear system as state space model
//			or transfer function
//
// Outputs:	None (prints results)
//
// NOTE: Any part of the zeros polynomial with a
//		 coeffeicient < (10^-9 * DC coeffecient)
//		 is removed. That is because SciLab tends
//		 to have many rounding errors in the
//		 numerator when going from state space 
//		 to transfer function
//***************************************************



function kpz (G)

    // Make sure we're dealing with transfer function
    if typeof (G) == 'state-space' then
        G = ss2tf (G);
    end

    P = roots (denom (G));
    K = coeff (numer (G), 0) / coeff (denom (G), 0);

    // Strip off any rounding errors in the zeros. These are easy to get when working with state space
    temp = coeff (numer (G));
    temp2 = coeff (numer (G), 0);
    for i = 1:length (temp)
        if temp(i) / temp2 < 10^-9 then
            temp(i) = 0;
        end
    end
    
    Z = roots (poly (temp, varn (denom (G)), "coeff"));
    
    mprintf ("Gain:")
    disp (K)
    mprintf ("Poles:")
    disp (P)
    mprintf ("Zeros:")
    disp (Z)
    
endfunction
