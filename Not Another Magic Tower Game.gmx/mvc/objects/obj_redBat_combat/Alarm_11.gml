with(obj_redbatblack)
{
    if(image_alpha<0.2&& blackflag==0)
    {
        image_alpha+=0.05;
        other.alarm[11]=2;
    }
    else
    {
        image_alpha-=0.01;
        blackflag=1;
        other.alarm[11]=2;
    }
    if(image_alpha==0)
    {
        blackflag=0;
        instance_destroy();
        other.alarm[11]=0;
    }
}


