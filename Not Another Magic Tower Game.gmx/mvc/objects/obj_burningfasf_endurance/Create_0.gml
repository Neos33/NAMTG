alarm[11]=50;
sound_fix(sndBEDevilLaugh);
alarm[0]=100;
    default_x = __view_get( e__VW.XView, 0 ); //Find what the view was originally
    default_y = __view_get( e__VW.YView, 0 ); //Find what the view was originally
    shake1 = 2; //The shake intensity (maximum-pixel-shake-per-side)
    incr = 0.5; //The amount of intensity increment when the quake starts and stops.
    
    factor = 0; //Current Intensity.
    
    
a = 0;

