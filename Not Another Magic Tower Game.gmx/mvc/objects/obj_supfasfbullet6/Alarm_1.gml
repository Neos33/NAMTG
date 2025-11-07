speed=0;
if(j<30)
{
    var bb=instance_create(x,y,obj_supfasfbullet7);
    bb.sprite_index=spr_supfasfbullet;
    bb.image_index=2;
    bb.image_speed=0;
    bb.speed=8
    bb.direction=random_range(0,359);
    j=j+1;
    alarm[1]=5;
}
else
{
    j=0;
    instance_destroy();
}

