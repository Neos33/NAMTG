if (vspeed==0 && hspeed=0) {
    if (global.triggered=trg and flag=0) {
        path_start(q,w,e,r);
        // q: path name, w: speed, e: endaction , r: absolute
        if scale = 0{
            path_scale = 1;
        }
        else{
            path_scale = s; // s: scale
        }
        flag=1;
    }
}
else {
    if (y>ystart+32 || y<ystart-32 || x>xstart+32 || x<xstart-32) depth=0;
}

