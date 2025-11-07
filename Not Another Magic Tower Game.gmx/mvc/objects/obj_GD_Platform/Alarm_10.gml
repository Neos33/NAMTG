if(image_alpha > 0)
{
    image_alpha -= 1 / 32 * global.dashSpd;
    alarm[10] = 1;
}
else
{
    image_alpha = 1;
    image_xscale = 1;
    image_yscale = 1;
}
if(global.GDEffect == 0)
{
    
}

