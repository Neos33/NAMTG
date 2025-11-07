image_angle+=5;
timer+=1;
if timer=1
{
    var a=instance_create(x,y,objShadow);
    a.sprite_index=sprite_index;
    a.speed=random_range(0.5,1.5);
    a.direction=random(360);
    a.depth=-20;
    a.image_xscale=image_xscale*random_range(0.8,1.2);
    a.image_yscale=a.image_xscale;
    a.alpspd=random_range(0.02,0.6);
    timer=0;
}

