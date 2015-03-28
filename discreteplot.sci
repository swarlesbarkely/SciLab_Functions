function discreteplot (n,y)
   plot2d3 (n,y)
   xlabel ("n")
   a = get ('current_axes');
   a = a.children.children;
   a.mark_mode = 'on';
   a.mark_style = 9;
   a.mark_background = 1;
endfunction
