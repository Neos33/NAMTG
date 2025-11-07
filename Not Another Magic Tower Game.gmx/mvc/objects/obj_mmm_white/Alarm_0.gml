if(alpha < 1)
{
    alpha += 0.02;
    alarm[0] = 1;
}
else
{
    player.x = 256 + 17; 
    player.y = 96 + 23;
    player.frozen = false;
    //transition_kind = 21;
    //transition_steps = 50;
    room_goto(r10F);    
}


