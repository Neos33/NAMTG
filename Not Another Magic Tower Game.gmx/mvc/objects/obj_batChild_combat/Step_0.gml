//if !instance_exists(player)
  //  exit;
    
dir = point_direction(x,y,player.x,player.y);

hspd = maxSpd * cos(degtorad(dir));
vspd = -maxSpd * sin(degtorad(dir));

hgap = hspd - hspeed;
vgap = vspd - vspeed;

hspeed += sign(hgap) * min(0.25, abs(hgap));
vspeed += sign(vgap) * min(0.25, abs(vgap));

if(direction < 0)
{
    direction += 360;
}
if(abs(direction - dir) != 180)
{
    if(abs(direction - dir) > 180)
    {
        if(direction > dir)
        {
            dir += 360;
        }
        else
        {
            dir -= 360;
        }
    }
    direction += sign(dir - direction) * min(2, abs(dir - direction));
}

if(!player_is_alive())
{
    if((global.combatTime >= 30 * room_speed) && !global.achievements[25])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 25;
        global.achievements[25] = true;
    }
}

