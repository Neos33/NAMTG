if(fireballCount > 0)
{
    fireballCount -= 1;
    instance_create(x,y,obj_giantBatFireCore);
    alarm[10] = 15;
}

