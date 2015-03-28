//***********************************************
//Creates unit pulse given on point and off point
//***********************************************

function y = upulse ( on, off, t )
    y = bool2s ( t > on & t <= off );
endfunction
