//*****************************************
// Returns a triangle wave of amplitude 1
// and of the given frequency
//*****************************************
function y = trianglewave (t, frequency)
	
	// Generate square wave of proper frequency
	temp = sign (sin (2*%pi*frequency * t));
	
	// Generate triangle wave by "integrating" square wave
	y = cumsum (temp);
	
	// Normalize output to [-1,1]
	y = (abs (y) / (.5 * max (abs (y))) - 1);
	
endfunction
