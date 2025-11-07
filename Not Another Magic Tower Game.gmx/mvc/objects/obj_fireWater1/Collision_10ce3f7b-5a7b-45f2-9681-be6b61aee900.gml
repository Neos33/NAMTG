splash = false;
with(player) {
    if (!place_meeting(x,yprevious,obj_fireWater1)) 
    {
        other.splash = true;
        other.cx = x;
        other.xr = 3;
        other.yr = 5;
    }
    if(vspeed>2)
    {
        vspeed=2;
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
        ammount = 8;
        event_user(0);
    }
}
event_inherited();

