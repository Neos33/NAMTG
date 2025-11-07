//instance_create(592,336,obj_kickaway);
obj_mikuwords.kickaway = true;
obj_mikuwords.alarm[0] = 1;
with(other)
{
    sound_fix(sndDeath);
    repeat(20)
    {
        bb = instance_create(x,y,obj_smallGrayCherry);
        bb.speed = random_range(7,9);
        bb.direction = random_range(80,150);
        bb.gravity = 0.15;
    }
    instance_destroy();
}

