if(status == 0)
{
    with(obj_appearEffect)
    {
        obj = instance_create(x - 16, y - 16, obj_slime_s_summoned);
        obj.pid = pid;
    }
}
else if(status == 2)
{
    soundInd = 0;
    with(obj_appearEffect)
    {
        obj = instance_create(x - 16, y - 16, obj_slime_red_summoned);
        obj.pid = pid;
        if(pid == 0)
        {
            sound = true;
        }
    }
}
else if(status == 4)
{
    with(obj_appearEffect)
    {
        other.obj[pid] = instance_create(x - 16, y - 16, obj_slime_black_summoned);
        other.obj[pid].pid = pid;
    }
}
with(obj_magicCircle)
{
    alarm[0] = 0;
    alarm[1] = 0;
    alarm[2] = 1;
}
magic.alarm[2] = 1;
magic.status = 1;
alarm[6] = 30;
status += 1;


