triggered = 0;
delay = 0;

if(global.story[20])
{
    w = instance_create(x,y,obj_b1FWarp);
    w.warpX = 1696 + 17;
    w.warpY = 176 + 23;
    w.roomTo = rB1F;
    instance_destroy();
}

