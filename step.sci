//***********************************************
// Plots step response for linear system
// Args: 
//       A, B, C, D -- system matricies
//	     X0 -- initial conditions
//       t -- time vector
//************************************************
function step (A, B, C, D, X0, t)
	dt = t(2) - t(1);
	X = X0;
	
	Y = zeros (C);
	
	for i = 1:length (t)
		dX = A*X + B;
		Y(:,i) = C*X + D;
	
		X = X + dX * dt;
	end
	
	plot (t, Y)
	
endfunction
