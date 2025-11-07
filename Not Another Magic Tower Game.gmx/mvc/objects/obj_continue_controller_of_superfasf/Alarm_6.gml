/// @description  Finale
if instance_exists(obj_superFasf_combat)
{
    fina=instance_create(obj_superFasf_combat.x,obj_superFasf_combat.y,obj_supfasfbullet6);
    fina.direction=random_range(92,268);
    fina.speed=random_range(3,6);
    //fina.alarm[1]=20;
}
alarm[6]=50;
alarm[1] = 0;

