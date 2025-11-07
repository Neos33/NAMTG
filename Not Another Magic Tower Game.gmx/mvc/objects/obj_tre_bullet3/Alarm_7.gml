for(i=0;i<4;i+=1)
{
    var a=instance_create(x,y,obj_tre_bullet3);
        a.speed = 6;
        a.direction = tdir+i*90;
        a.image_index=image_index;
}
instance_destroy()

