instance_create(x,y,obj_dmRippleController);
instance_create(x,y,obj_dmShaker);
instance_create(x,y,obj_dmWaterController);
/*if(y > - 64)
{
    vspeed -= 0.2;
    alarm[4] = 1;
}
*/

    pCount = 4;
    p = ds_list_create();
    for(var i=0;i<4;i+=1)
    {
        ds_list_add(p,i);
    }
    ds_list_shuffle(p);
    px[0] = 98 + 16;
    px[1] = 296 + 16;
    px[2] = 488 + 16;
    px[3] = 680 + 16;
    alarm[5] = 20;

/* */
/*  */
