r += 8;
direction += 10;
x = centerX + r * cos(degtorad(direction));
y = centerY - r * sin(degtorad(direction));
if(r mod 64 == 0)
{
    if(ind == 0)
    {
        sound_fix(snd_touhou_attack5);
    }
    if(!clear)
    {
        instance_create(x,y, obj_beBossPhase3Bullet3);
    }
}
alarm[0] = 1;

