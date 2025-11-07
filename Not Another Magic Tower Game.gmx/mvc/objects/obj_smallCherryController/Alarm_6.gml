with(obj_combatPlayerKiller)
{
    if(hspeed == 0 && vspeed == 0)
    {
        speed = irandom_range(5,8);
        direction = irandom_range(0,359);
    }
}
climaxCenter.alarm[1] = 1;
with(climaxCenter)
{
    repeat(20)
    {
        p = instance_create(x,y,obj_smallGrayCherry);
        p.speed = irandom_range(5,8);
        p.direction = irandom_range(0,359);
    }
}
alarm[7] = 30;

