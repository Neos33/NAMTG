if(a==0 or a==1 or a==2)
{
    var aa=instance_create(x,y,obj_guardlv3_block);
    var ab=instance_create(x-32,y,obj_guardlv3_block);
    aa.sss=1;
    ab.sss=1;
}

if(a==3)
{
    instance_create(x,y,obj_guardlv3_spike);
}

if(a==4 or a==5)
{
    instance_create(x,y,obj_guardlv3_avoid)
}

if(a==6)
{
    instance_create(x-32,y,obj_guardlv3_hit)
}
/*
switch(a)
{
case 0 or 1 or 2:
{
instance_create(x,y,obj_guardlv3_block)

}
break;
case 3:
instance_create(x,y,obj_guardlv3_spike)
break;
case 4 or 5:
instance_create(x,y,obj_guardlv3_avoid)
break;
case 6:
instance_create(x,y,obj_guardlv3_hit)
break;
}

/* */
/*  */
