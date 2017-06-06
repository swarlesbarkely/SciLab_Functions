//***************************************************
// Performs simplified Clarke transform on given
// current / voltage vector -- assumes Ia + Ib + Ic = 0
// Function will perform inverse transform depending
// on input vector dimensions
//
// Inputs:	Current or voltage vector
//
// Returns:	Transformed current or voltage vector
//***************************************************

function transformedVectors = clarke (inputVectors)

   T = [];
   vectorSize = size (inputVectors, "r");
    
   if vectorSize == 3 then
      // Clarke transform
      T = (2/3) * [1     -.5         -.5;
                   0     sqrt(3)/2   -sqrt(3)/2];
        
   elseif vectorSize == 2 then
      // Inverse Clarke transform
      T = [1   0;
           -.5 sqrt(3)/2;
           -.5 -sqrt(3)/2];
                     
   end
     
   for i = 1:size (inputVectors, "c")
      transformedVectors(:, i) = T * inputVectors(:, i);
   end
     
endfunction

//***************************************************
// Performs Park transform on given current / voltage
// vector -- assumes Ia + Ib + Ic = 0
// Function will perform inverse transform depending
// on input vector dimensions
//
// Inputs:	Current or voltage vector
//
// Returns:	Transformed current or voltage vector
//***************************************************

function transformedVectors = park (inputVectors, theta)

   T = []
   vectorSize = size (inputVectors, "r");
    
   if vectorSize == 3 then
      // Park transform
      clarkeResult = clarke (inputVectors);
      
      for i = 1:size (inputVectors, "c")
         T = [cosd(theta(i))  sind(theta(i));
              -sind(theta(i)) cosd(theta(i))];
                                         
         transformedVectors(:, i) = T * clarkeResult(:, i);
      end
        
   elseif vectorSize == 2 then
      // Inverse Park transform
      for i = 1:size (inputVectors, "c")
         T = [cosd(theta(i))    -sind(theta(i));
              sind(theta(i))    cosd(theta(i))];
                        
         transformedVectors(:, i) = clarke (T * inputVectors(:, i));
      end
                     
   end
     
endfunction
