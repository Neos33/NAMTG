if(image_xscale < 1)
{
    image_xscale += 0.04;
    image_yscale += 0.04;
    image_alpha += 0.04;
    alarm[3] = 1;
}
else
{   
    weapon = instance_create(x,y,obj_tlDarkMageSickleSword);
    weapon.parent = id;
    alarm[4] = 90;
}

