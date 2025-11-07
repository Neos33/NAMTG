if(phase == 1)
{
    p2Count += 1;
    image_angle -= 360 / 10;
    image_xscale -= 0.1;
    image_yscale -= 0.1;
    if(p2Count == 16)
    {
        alarm[2] = 1;
    }

}
if(anglerunning==1)
{
image_angle+=12;
}

