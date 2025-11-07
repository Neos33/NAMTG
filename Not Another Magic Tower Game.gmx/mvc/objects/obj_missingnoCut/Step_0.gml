if(isLead)
{
    if(x > 300)
    {
        if(type == 0)
        {
            motion_add(point_direction(x,y,player.x + 32,player.y + 32), 1);
        }
        else
        {
            motion_add(point_direction(x,y,player.x - 32,player.y - 32), 1);
        }        
    }
}
else
{
    if instance_exists(parent)
    {
        direction = point_direction(x,y,parent.px,parent.py);
        x = parent.px;
        y = parent.py;
    }
}
image_angle = direction - 90;

