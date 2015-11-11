//******************************************************
// Shifts the elements of x to the right n times
// NOTE: Negative n shifts to the left
// Elements shifted past ends of x are ignored
//******************************************************

function y = shift (x,n)
    y = zeros (x);
    
    for i = 1:length (x)
        if i + n <= 0 then 
        	// Negative index is past the end of the array --> ignore
        	continue;
        	
        elseif i + n > length (x) then 
        	// Reached end of array
        	break;
        end
        
        y (i+n) = x (i);
        
    end
endfunction
