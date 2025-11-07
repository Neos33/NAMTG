if(x > 250 && x < 550)
{
    if(player.x < 200)
    {
        hdir = choose(choose(-1, 1), -1);
    }
    else if(player.x > 600)
    {
        hdir = choose(1, choose(-1, 1));
    }
    else
    {
        hdir = choose(-1, 1);
    }
}
else
{
    if(x <= 250)
    {
        hdir = 1;
    }
    else if(x >= 550)
    {
        hdir = -1;
    }
}

if(y > 80 && y <160)
{
    vdir = choose(-1, 1);
}
else
{
    if(y <= 80)
    {
        vdir = 1;
    }
    else if(y >= 160)
    {
        vdir = -1;
    }
}

hdis =  random_range(70, 90);
vdis = random_range(40,60);
targetX = x + hdir * hdis;
targetY = y + vdir * vdis;
move = true;

