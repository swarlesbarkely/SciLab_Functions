//************************************
// Returns the unit step function where
// u(t) = 1 for all t >=0 and 0 for all t < 0
//************************************

function y = ustep ( t )
    y = bool2s ( t >= 0 )
endfunction
