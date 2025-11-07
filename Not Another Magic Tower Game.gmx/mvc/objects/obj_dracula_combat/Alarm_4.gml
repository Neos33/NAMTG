if(!appear)
{
    appear = true;
    if(transformed)
    {
        x = 400;
        y = 368;
        audio_playsound(sndDraculaTran1);
    }   
    instance_create(x, 0, obj_draculaAppearEffect);
}
if(image_alpha < 1)
{
    image_alpha += 0.03;
    alarm[4] = 1;
}
else
{
    transfer = false;
    meteorShot = 2;
    fireballShot = 4;
}

