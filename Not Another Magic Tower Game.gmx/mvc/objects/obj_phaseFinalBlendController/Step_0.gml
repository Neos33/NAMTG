//color = draw_getpixel(x + p,y+16);
color = c_gray;
__background_set( e__BG.Blend, 0, color );
with(obj_phaseFinalSpikeUp)
{
    image_blend = other.color;
}
with(obj_phaseFinalBlock2)
{
    image_blend = other.color;
}
p+=1;
if(p == 160)
{
    p = 0;
}

with(player)
{
    x = 96 + 17;
    if(sprite_index == sprPlayerIdle)
    {
        sprite_index = sprPlayerRunning;
    }
    hspeed = 0;
}

