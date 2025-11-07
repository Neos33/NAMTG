alarm[0]=1

if(harid=0)
{
    speed=0
    direction+=30
    aaa+=1
}

if(aaa=35)
{
    harid=1
}

if(harid=1)
{
    alarm[0]=0
    move_towards_point(player.x,player.y,10);
}

