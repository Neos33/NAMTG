with(player)
{
    frozen = true;
    gravity = 0;
    x = obj_swordMaster_combat.x - 16 * sign(other.image_xscale);
    //y = lengthdir_y(6, point_direction(other.x, other.y, x, y));
}
alarm[11] = 10;
event_inherited();

