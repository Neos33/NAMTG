if(image_xscale > 0)
{
    image_xscale -= 0.1;
    image_yscale -= 0.1;
    alarm[4] = 1;
}
else
{
    var rndAngle = random_range(0,360);
    for(var i = 0; i < 20; i+=1)
    {
        var p = instance_create(x,y,obj_bdmEnergyBall2);
        p.direction = i * 18 + rndAngle;
        p.speed = 4;
    }
    sound_fix(sndFire1);
    instance_destroy();
}

