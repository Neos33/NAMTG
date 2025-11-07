repeat(2)
{
    var aa=instance_create(x,y,obj_cherry_black)
    with(aa)
    {
        speed=random_range(6,8);
        direction=random_range(90,180);
        gravity=0.1;
    }
}
if(i<30)
{
    i+=1;
    alarm[3]=6;
}
else
{
    alarm[3]=0;
    isAch = true;
    alarm[4]=30;
}

