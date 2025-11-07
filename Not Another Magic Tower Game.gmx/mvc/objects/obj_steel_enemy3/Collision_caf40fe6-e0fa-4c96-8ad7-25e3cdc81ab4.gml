if(damage=false)
{
    flashobject(5,3);
    HP-=1;
    damage=true;
    with(other)instance_destroy();
    alarm[5]=40;
}

