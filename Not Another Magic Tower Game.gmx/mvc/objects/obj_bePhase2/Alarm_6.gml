with(obj_beBossPhase2Bullet3)
{
    rotateIndex = irandom_range(0,20);
    if(rotateIndex < (other.p2Count + 4))
    {
        tDir = 540 - direction;
        if(type == 0)
        {
            type = 1;
        }
        else
        {
            type = 0;
        }
        alarm[3] = 1;
        image_index += 1;
        alarm[4] = 3;
    }
}
p2Count += 1;
sound_fix(snd_touhou_attack2);
alarm[6] = 120;

