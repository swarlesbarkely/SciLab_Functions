<<<<<<< HEAD
function y = upulse ( a, b )
    y = bool2s ( t > a & t <= b );
=======
//***********************************************
//Creates unit pulse given on point and off point
//***********************************************

function y = upulse ( on, off, t )
    y = bool2s ( t > on & t <= off );
>>>>>>> 3382da609c26c5597a7b8ac272d23ace0ca7f2d4
endfunction
