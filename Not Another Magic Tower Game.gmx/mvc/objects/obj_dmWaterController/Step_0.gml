if(place_meeting(player.x,player.y,obj_dmWater1))
{
    if(current > 0)
    {
        current -= 1;
    }
}
else
{
    if(current < 97)
    {
        current += 3;
    }
    else
    {
        current = 100;
    }
}

if(current < 100)
{
    if(alpha < 1)
    {
        alpha += 0.05;
    }
}
else
{
    if(alpha > 0)
    {
        alpha -= 0.05;
    }
}

