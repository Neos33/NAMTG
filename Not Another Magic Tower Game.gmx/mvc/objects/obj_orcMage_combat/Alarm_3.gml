if(image_alpha < 1)
{
    status = "pending";
    image_alpha += 0.02;
    alarm[3] = 1;
}
else
{
    with(obj_orcMageAppearEffect1)
    {
        instance_destroy();
    }
    deathHeartCount = 0;
    swordBoomCount = 0;
    alarm[4] = 30;
}

