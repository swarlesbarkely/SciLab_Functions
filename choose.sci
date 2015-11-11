//***************************************************
// Calculates how many combinations of x can be chosen
// from n elements
//***************************************************

function y = choose (n, x)

	if ((x > n) | (x == 0) | (n == 0))
		
		y = [];
		mprintf ("Error!")
		
	else
	
	y = factorial (n) / ( factorial (x) * factorial (n - x) )
	
	end
	
endfunction
