if(hidden)
{
    with(player)
    {
        x = other.targetX + 17;
        y = other.targetY + 23;
        gravity = 0;
        hspeed = 0;
        vspeed = 0;
        visible = 0;
        frozen = true;
    }
}
else
{
    with(player)
    {
        visible = 1;
        frozen = false;
    }
}

