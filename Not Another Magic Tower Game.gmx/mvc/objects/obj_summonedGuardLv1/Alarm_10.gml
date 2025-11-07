phase = "run";
sprite_index = spr_guardlv1_dash;
if(player.x > x)
{
    hspeed = 15;
    image_xscale = -1;
}
else
{
    hspeed = -15;
    image_xscale = 1;
}
key.onHold = false;
key.onRun = true;
sound_fix(sndEarth2);

