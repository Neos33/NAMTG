if (vspeed==0 && hspeed=0) {
    if (global.triggered=trg) {
        vspeed=v;
        hspeed=h;
    }
}
else {
    if (y>ystart+32 || y<ystart-32 || x>xstart+32 || x<xstart-32) depth=0;
}

