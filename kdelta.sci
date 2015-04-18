//***********************************
// Returns the Kronecker Delta function
// where kdelta [n] = 1 for n = 0 and 0 for all other n
//***********************************

function y = kdelta (n)
    y = zeros (n) + bool2s (n == 0)
endfunction
