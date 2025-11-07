if(image_alpha < 1)
{
    image_alpha += 0.01;
}
else if(!triggered)
{
    triggered = true;
    alarm[0] = 10;
}

