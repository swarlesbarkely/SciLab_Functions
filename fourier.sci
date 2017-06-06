//**********************************************************************
// Plots the frequency contents of the given signal
//**********************************************************************
function fourier (t, y)

   SampleRate = 1 / (t(2) - t(1));
   N = size (t, '*');
   
   y = fft (y) * 2 / N;
   Freq = SampleRate * (0:int (N/2)) / N;
   
   N = size (Freq, '*');
   
   plot (Freq, abs (y (1:N)));
   
endfunction
