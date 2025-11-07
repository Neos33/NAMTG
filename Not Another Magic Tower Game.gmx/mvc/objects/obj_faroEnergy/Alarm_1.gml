for(i=0;i<20;i+=1)
{
    a = i = 18;
    b = instance_create(x,y,child);
    b.ind = i;
    b.direction = a;
    b.parent = me;
}

