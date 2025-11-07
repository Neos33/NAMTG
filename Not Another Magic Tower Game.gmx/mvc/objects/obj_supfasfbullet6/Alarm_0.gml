speed=0;
if(i<30)
{
    var aa=instance_create(x,y,obj_supfasfbullet7);
    aa.sprite_index=spr_supfasfbullet;
    aa.image_index=1;
    aa.image_speed=0;
    aa.speed=8
    aa.direction=180+diree;
    diree+=15;
    alarm[0]=7;
}
else
{
    i=0;
    instance_destroy();
}

