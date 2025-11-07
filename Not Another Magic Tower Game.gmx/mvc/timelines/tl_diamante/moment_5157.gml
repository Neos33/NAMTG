with(obj_diaDanmaku)
{
    if image_index = 3
    {
        speed = 15;
        direction = point_direction(x,y,player.x,player.y);
        image_angle = direction;
    }
}
with(obj_diaPlatform2)
{
    yspeed = 12;
}

