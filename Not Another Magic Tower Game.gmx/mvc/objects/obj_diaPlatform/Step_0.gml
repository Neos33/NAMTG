if (place_meeting(x,y-player.vspeed-1,player)) 
{
    player.y+=yspeed;
}
y+=yspeed;

if(yspeed<0)
{
    yspeed += cal_friction(6,208);
}
else
{
    instance_change(obj_diaBlock,1);
}

