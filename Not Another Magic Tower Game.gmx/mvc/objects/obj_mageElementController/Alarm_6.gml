with(obj_mageDarkBullet)
{
    alarm[4] = 1;
}
audio_playsound(sndDark2);
repeat(irandom_range(140, 160))
{
    var darkBullet = instance_create(random_range(32, 768), random_range(32, 576), obj_mageDarkBullet);
    darkBullet.direction = random_range(0,359);
}
darkCount += 1;

if(darkCount mod 2 == 1)
{
    alarm[7] = 5;
}
else
{
    alarm[8] = 5; 
}

if(darkCount < 4)
{
    alarm[6] = 150;
}
else
{
    alarm[11] = 150;
}





