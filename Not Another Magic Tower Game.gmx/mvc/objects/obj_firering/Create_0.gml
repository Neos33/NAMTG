alarm[0]=3;
alarm[1]=250;
    default_x = __view_get( e__VW.XView, 0 ); //Find what the view was originally
    default_y = __view_get( e__VW.YView, 0 ); //Find what the view was originally
    shake1 = 10; //The shake intensity (maximum-pixel-shake-per-side)
    incr = 0.5; //The amount of intensity increment when the quake starts and stops.
    
    factor = 0; //Current Intensity.

