var randomX = __view_get( e__VW.XView, 0 ) + random_range(64, __view_get( e__VW.WView, 0 ) - 64);
var randomY = __view_get( e__VW.YView, 0 ) + random_range(64, __view_get( e__VW.HView, 0 ) - 64);
//instance_create(randomX, randomY + 40,obj_bdmDeathClawAppearEffect);
if(point_distance(randomX, randomY, player.x, player.y) < 96)
{
    var dir = point_direction(player.x, player.y, randomX, randomY);
    randomX = player.x + lengthdir_x(96, dir);
    randomY = player.y + lengthdir_y(96, dir);
}
instance_create(randomX, randomY,obj_bdmDeathClaw);
alarm[3] = 40;

