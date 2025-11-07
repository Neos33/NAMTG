speed=0;
if(l<30)
{
    var dd=instance_create(x,y,obj_supfasfbullet7);
    dd.sprite_index=spr_supfasfbullet;
    dd.image_index=4;
    dd.image_speed=0;
    dd.speed=irandom(6)+1;
    dd.gravity=0.15;
    dd.direction=75+irandom(30);
    l=l+1;
    alarm[3]=7;
}
else
{
    l=0;
    instance_destroy();
}

