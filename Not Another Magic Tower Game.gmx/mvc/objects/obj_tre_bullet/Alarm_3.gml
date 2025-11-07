if(image_alpha<1)
{
    image_xscale += 0.25/50;
    image_yscale += 0.25/50;
    image_alpha += 1/50;
}
else
{
    if(!done)
    {
        speed = 2.5;
        direction = random(360);
        done = 1;
    }
}
if !place_free(x+hspeed,y) hspeed = -hspeed;
if !place_free(x,y+vspeed) vspeed = -vspeed;
alarm[3]=1;

