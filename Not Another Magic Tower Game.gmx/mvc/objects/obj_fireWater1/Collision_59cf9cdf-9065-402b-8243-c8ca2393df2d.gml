splash = false;
with(other) {
    if (!place_meeting(x,yprevious,obj_fireWater1)) 
    {
        other.splash = true;
        other.cx = x;
        other.xr = 7;
        other.yr = 5;
    }
}

if(splash)
{
    cy = y;
    sound_fix(sndDive1);
    with(obj_fireWaterParticleController)
    {
        cx = other.cx;
        cy = other.cy;
        xRange = other.xr;
        yRange = other.yr;
        ammount = 16;
        event_user(0);
    }
}

