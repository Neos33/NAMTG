if instance_exists(b)
{
    b.x = x-22;
    b.y = y-22;
    if(player.redKnightDash)
    {
        b.solid = false;   
    }
    else if(!collision_rectangle(x-22,y-22,x+22,y+22, player,false,true))
    {
        b.solid = true;
    }
}

move_bounce_solid(false);

