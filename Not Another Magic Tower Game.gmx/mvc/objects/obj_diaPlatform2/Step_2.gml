drag = false;
if (place_meeting(x,y-player.vspeed-1,player)){
    player.y+=yspeed;
    drag = true;
}
y+=yspeed;
if(drag)
{
    if(player.y > y - 9)
    {
        player.y = y - 9;
    }
}

if(yspeed>0){
    yspeed -= cal_friction(12,50);
}
else{
    yspeed = 0;
}

