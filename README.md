# SciLab Functions
## angle (complex_var, 'deg' or 'rad')

Returns the phase angle of a complex number between -180 and 180 (or -pi and pi). HINT: 'd' or 'r' can be used in place of 'deg' and 'rad', respectively

## choose (n, k)

Returns the number of combinations of k that can be made from n elements

## clarke (current_vectors)

Performs a Clarke or inverse Clarke transform on the given vectors (assumes Ia + Ib + Ic = 0)

## discreteplot (x-var, y-var)

Expansion on plot2d3 -- adds actual points to plot

## fourier (t, y)

Plots the frequency content of the given function (not fully tested)

## kdelta (n)

Kronecker Delta function -- returns a vector the size of n which is 1 when n = 0 and 0 otherwise

## kpz (LinearSystem)

Prints zeros, poles, and gain of continuous time linear system (similar to Matlab function zpk)

## pfe (expression)

Prints the partial fraction expansion of expression (always gives output in terms of x)

## shift (array, amount)

Shifts <i>array</i> right by <i>amount</i> and fills in empty data with 0s

## step (A, B, C, D, X0, t)

Plots the step response of the given control system

## trainglewave (t, frequency)

Returns a triangle wave signal the length of t which goes from -1 to 1 at the given frequency

## ustep (t)

Unit step function -- 1 for all t >= 0, 0 otherwise

## zlqr (A, B, Q, R)

Returns the LQG feedback gains for the given system (similar to MatLab's lqr function)
