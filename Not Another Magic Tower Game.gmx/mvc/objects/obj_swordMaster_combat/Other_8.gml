dis = point_distance(player.x, player.y, x, y);
if(dis < 128)
{
    if(bounceCount > 0)
    {
        ind = 10;
    }
    else
    {
        ind = 11;
    }
    //aDir = 90 - point_direction(x,y,player.x, player.y);
    audio_playsound(sndExpMax);
    if(player.y < 328)
    {
        evtInd = choose(3,4,5);
        //event_user(choose(3,5));
    }
    else
    {
        evtInd = choose(4,6,7);
        //event_user(irandom_range(4,7));
    }
    countdown = 15;
    status = 3;
}
else
{
    if(bounceCount > 0)
    {
        alarm[10] = 1;;
    }
    else
    {
        alarm[11] = 1;
    }
}

