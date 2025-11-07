targetX = RangeClamp(player.x, 96, 704);
if(y > 80 && y <160)
{
    targetY = y + choose(random_range(20,30), random_range(-30,-20));
}
else
{
    if(y <= 80)
    {
        targetY = y + random_range(20,30);
    }
    else if(y >= 160)
    {
        targetY = y + random_range(-30,-20);
    }
}
move = true;
colorful = true;

for(var i = -2; i <= 2; i+=1)
{
    instance_create(x +96*i, y - abs(i * 64), obj_dsWhiteBullet2);
}

alarm[6] = 50;

