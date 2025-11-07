if(image_alpha>=0)
{
    image_alpha-=0.04;
    alarm[2]=1;
}
else
{
    with(obj_burningFasf_combat)alarm[choose(4,6)]=70;
    instance_destroy();
}


