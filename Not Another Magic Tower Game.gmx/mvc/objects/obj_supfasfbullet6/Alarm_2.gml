speed=0;
if(k<5)
{
    repeat(12)
    {
        var cc=instance_create(x,y,obj_supfasfbullet7);
        cc.sprite_index=spr_supfasfbullet;
        cc.image_index=3;
        cc.image_speed=0;
        cc.speed=8
        cc.direction=70+diree2;
        diree2+=30;
        k=k+1
    }
    alarm[2]=20;
}
else
{
    k=0;
    instance_destroy();
}

