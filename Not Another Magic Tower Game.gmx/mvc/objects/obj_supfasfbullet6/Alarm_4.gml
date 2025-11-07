speed=0;
if(m<5)
{
    var ee=instance_create(x,y,obj_supfasfbullet7);
    ee.sprite_index=spr_supfasfbullet;
    ee.image_index=1;
    ee.image_speed=0;
    ee.speed=8
    ee.direction=point_direction(x,y,player.x,player.y);
    m=m+1
    alarm[4]=25;
}
else
{
    m=0;
    instance_destroy();
}

