function theta = angle (x, unit)
    if unit == 'deg' then
        for i = 1:length(x)
            if real (x (i)) ~= 0 then
                theta (i) = atand (imag (x (i)) / real (x (i)))
                else theta (i) = []
            end
        end

    end
    
    if unit == 'rad' then
        for i = 1:length(x)
            if real (x (i)) ~= 0 then
                theta (i) = atan (imag (x (i)) / real (x (i)))
                else theta (i) = []
            end
        end
    end
    
    theta = theta'
endfunction
