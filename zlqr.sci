//****************************************************
// Returns the LQG feedback gains for the given system
// Similar to MatLab's lqr function
// Arguments:
//    A, B ---State matricies
//    Q, R -- Cost matricies
// Returns -- Set of feedback gains
//
// Example: Plots closed loop poles for calculated 
//          feedback gains using different Q values
//
//-->A = [-2,1,0,0;1,-2,1,0;0,1,-2,1;0,0,1,-1];
// 
//-->B = [1 0 0 0]';
// 
//-->C = [0 0 0 1];
// 
//-->Q = C'*C;
// 
//-->for i=1:100
//-->Kx = zlqr (A, B, i*Q, R);
//-->plot (real (spec (A-B*Kx)), imag (spec (A-B*Kx)), '.')
//-->end
//*****************************************************
function Kx = zlqr (A, B, Q, R)
   P = ricc (A, B*inv(R)*B', Q, 'cont');
   Kx = inv (R) * B' * P;
endfunction
