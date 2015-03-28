// Author (C): Samuel GOUGEON - Le Mans, France
// Related Software: Scilab
// License   : CeCILL-B : http://www.cecill.info/licences
// Release   : 1.1
// Date      : 2010-
// Reference : http://bugzilla.scilab.org/show_bug.cgi?id=7293

function R = cshift(M,d)
  // cshift(M,d)
  // circularly shifts by d(i) positions components of M along its #ith dimensions
  // M : vector, matrix or hypermatrix of any data type
  // d : vector of integers. d(i) is the shift to be applied to the M's components along its #ith dimension.
  //
  // EXAMPLES:
  // M = grand(4,3,"uin",-9,9)
  // cshift(M,1)
  // M, cshift(M,-1)
  // M, cshift(M, [0 1]), cshift(M,[1 1])
  
  
  Fname = "cshift"
  if argn(2)==0
	head_comments(Fname)
	R = []
	return
  end
  s = size(M)
  R = M
  for i=1:length(d)
    if s(i)>1
      D = pmodulo(d(i),s(i))
      if D~=0
        S = emptystr(1,length(s))+":"
        S(i) = "[s(i)-D+1:s(i) 1:s(i)-D]"
        S = strcat(S,",")
        execstr("R = R("+S+")")
      end
    end
  end
endfunction
