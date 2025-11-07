var leafshooter1 = instance_create(200, 0, obj_mageLeafCutCreator);
leafshooter1.type = 1;
leafshooter1.hspeed = 5;

var leafshooter2 = instance_create(600, 0, obj_mageLeafCutCreator);
leafshooter2.type = 0;
leafshooter2.hspeed = -5;
if(shootLeaf)
{
    alarm[4] = 75;
}

