x=400;
y=304;
rnd5=irandom(24);
for(i=1;i<10;i+=1)
{
    for(var j=0;j<6;j+=1)
    {
        var a=instance_create(x,y,obj_tre_bullet);
            a.speed=i/0.4;
            a.direction=60*j;
            a.dirspd=1;
            a.no=1;
            a.num=count5;
            count5+=1;
            a.sprite_index=spr_cboom;
            a.image_index=j*6+irandom(2)+rnd5;
    }
}
for(i=1;i<10;i+=1)
{
    for(var j=0;j<6;j+=1)
    {
        var a=instance_create(x,y,obj_tre_bullet);
            a.speed=i/0.4;
            a.direction=60*j;
            a.dirspd=-1;
            a.no=1;
            a.num=count5;//instance_number(obj_tre_bullet);
            count5+=1;
            a.sprite_index=spr_cboom;
            a.image_index=j*6+irandom(2)+rnd5;
    }
}

