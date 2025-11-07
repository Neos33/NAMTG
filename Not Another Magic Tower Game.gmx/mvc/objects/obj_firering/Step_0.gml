
    if factor<shake1 {factor+=incr;} //Increase the shake intensity till it reaches the maximum intensity
    else {factor=shake1;}


    __view_set( e__VW.XView, 0, default_x-factor+random(factor*2) ); //Shake horizontally
    __view_set( e__VW.YView, 0, default_y-factor+random(factor*2) ); //Shake vertically



