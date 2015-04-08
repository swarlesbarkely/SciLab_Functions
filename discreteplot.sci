//**********************************************************************
// A slight modification of plot2d3 where each point is given a marker
//**********************************************************************

function discreteplot (n,y)
<<<<<<< HEAD
   min_n = min (n) - .1*abs ( min (n))
   max_n = max (n) + .1*abs ( max (n))
   min_y = min (y) - .1*abs ( min (y))
   max_y = max (y) + .1*abs ( max (y))
   plot2d3 (n,y)
   a = get ('current_axes');
   a.x_location = 'origin';
   a.x_label.text = "n"
   a.x_label.position = [max_n + 1,-1]
   a.auto_scale = 'off';
   a.data_bounds = [min_n,min_y;max_n,max_y];
   a.zoom_box = [min_n,min_y,max_n,max_y];
=======
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
>>>>>>> 3382da609c26c5597a7b8ac272d23ace0ca7f2d4
   a = a.children.children;
   a.mark_mode = 'on';
   a.mark_style = 9;
   a.mark_background = 1;
endfunction
