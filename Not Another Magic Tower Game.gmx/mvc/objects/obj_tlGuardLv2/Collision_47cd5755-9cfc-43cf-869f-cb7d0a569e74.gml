if(smash)
{
    speed = 0;
    x += lengthdir_x(15,direction);
    y += lengthdir_y(15,direction);
    
    var px, py;
    
    if(other.x < 0)
    {
        px = 0;
        py = y;
    }
    else if(other.x >= 800)
    {
        px = 800;
        py = y;   
    }
    else
    {
        px = x;
        py = other.y;
    }
    instance_create(px,py,obj_guardlv2explode);
    smash = false;
    if(sound)
    {
        sound_fix(sndEarth1);
    }
    alarm[5] = 5;
}

