if(image_xscale > 0)
{
    image_xscale -= 0.04;
    image_yscale -= 0.04;
    alarm[3] = 1;
}
else
{
    sound_fix(sndfasfboom);
    repeat(20)
    {
        instance_create(x,y,obj_skeletonOrcBullet1);
    }
    instance_destroy();
}

