if(!player_is_alive()) exit;
repeat(6)
{
    hitEffect();
}
dir1 = point_direction(player.x,player.y,x,y);
dir2 = dir1 + 180;
dis = point_distance(player.x,player.y,x,y);
sx1 = player.x + lengthdir_x(8,dir1);
sy1 = player.y + lengthdir_y(8,dir1);
sx2 = x + lengthdir_x(8,dir2);
sy2 = y + lengthdir_y(8,dir2);
repeat(ceil(dis/16/2))
{
    with(instance_create(sx1,sy1,obj_spaceTeleportEffect))
    {
        image_angle = other.dir1 - 90;
    }
    with(instance_create(sx2,sy2,obj_spaceTeleportEffect))
    {
        image_angle = other.dir2 - 90;
    }  
    sx1 += lengthdir_x(16,dir1);
    sy1 += lengthdir_y(16,dir1);
    sx2 += lengthdir_x(16,dir2);
    sy2 += lengthdir_y(16,dir2);
}




if(player.vspeed != 0)
{
    with(player)
    {
        repeat(6)
        {
            hitEffect();
        }
        if(place_meeting(other.x, other.y - 1, block) && vspeed < 0)
        { 
            y = other.y + 1;   
            vspeed = 0;
        }
        else if(place_meeting(other.x, other.y + 1, block) && vspeed > 0)
        {
            y = other.y - 1;   
            vspeed = 0;
        }
        else
        {
            y = other.y - 1;
        }
        
    }
}
else
{
    player.y = y - 1;
}
player.x = x;
player.hspeed = 0;


