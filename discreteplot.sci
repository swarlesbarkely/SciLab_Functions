//**********************************************************************
// A slight modification of plot2d3 where each point is given a marker
//**********************************************************************

function discreteplot (n,y)
   min_n = min (n)
   max_n = max (n)
   min_y = min (y) - .1*abs ( min (y))
   max_y = max (y) + .1*abs ( max (y))
   plot2d3 (n,y)
   xlabel ("n")
   a = get ('current_axes');
   a.auto_scale = 'off';
   a.data_bounds = [min_n,min_y;max_n,max_y];
   a.x_location = 'origin';
   a = a.children.children;
   a.mark_mode = 'on';
   a.mark_style = 9;
   a.mark_background = 1;
endfunction
