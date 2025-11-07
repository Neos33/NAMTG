if other.vspeed>0
{
    with other
    {
        instance_destroy();
    }
    instance_create(0,0,flashWhite);
    instance_create(392,272,objBossInHole);
    global.phase+=1;
    var a=instance_create(250,160,objBoss1Pattern3);
    a.alarm[11]=1;
    a.dire=180;
    
    a=instance_create(550,160,objBoss1Pattern3);
    a.alarm[11]=1;
    a.dire=0;

    instance_destroy();
}


