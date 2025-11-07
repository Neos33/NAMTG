action_inherited();
image_speed = 0;
image_index = irandom_range(0,14);
if(!obj_darkLord_combat.crazy)
{
    speed = random_range(4,4.5);
}
else
{
    speed = random_range(6.5,7);
}
direction = random_range(-20,20);
image_angle = direction - 90;

