if(hp == 0)
{
    sound_fix(sndDeath);
    instance_create(x,y,obj_giantBat_childBulletCreator);
}
instance_create(x,y, obj_giantBat_energy);
instance_destroy();

