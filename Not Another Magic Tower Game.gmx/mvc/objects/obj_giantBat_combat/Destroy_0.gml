with(obj_giantBatSummoned1)
{
    instance_destroy();
}
with(obj_giantBatSummoned2)
{
    instance_destroy();
}
ebCount = instance_number(obj_giantBat_childBulletCreator);
if(ebCount >= 3 && summonKilled >= 3)
{
    hasAchievement = true;
}
event_inherited();

