//*****************************************
// Returns the angle of a complex number
// Call using angle (complex_number_or_matrix , unit)
// Unit can either be "deg" or "d" for degrees or "rad" or "r" for radians
//*****************************************

function theta = angle (x, unit)
    if unit == 'deg' | unit == 'd' then
        for i = 1:length(x)
            if real (x (i)) ~= 0 then
                theta (i) = atand (imag (x (i)) / real (x (i)))
                else theta (i) = []
            end
        end

    end
    
    if unit == 'rad' | unit == 'r' then
        for i = 1:length(x)
            if real (x (i)) ~= 0 then
                theta (i) = atan (imag (x (i)) / real (x (i)))
                else theta (i) = []
            end
        end
    end
    
    theta = theta'
endfunction
