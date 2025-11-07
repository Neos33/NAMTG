if(image_xscale < 1)
{
    image_xscale += 0.04;
    image_yscale += 0.04;
    alarm[3] = 1;
}
else
{
    start = true;
    event_user(0);
    alarm[4] = 1;
}

