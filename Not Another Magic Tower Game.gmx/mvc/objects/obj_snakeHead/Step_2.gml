/*if(dir == "left")
{
    if((ceil(guide.x / 32) * 32) != x)
    {
        if(place_meeting(x-32,y,player))
        {
            player.x = x - 32 - 6;
        }
        isMove = true;
    }
}
else if(dir == "right")
{
    if((floor(guide.x / 32) * 32) != x)
    {
        if(place_meeting(x+32,y,player))
        {
            player.x = x + 32 + 32 + 6;
        }
        isMove = true;
    }
}
else if(dir == "up")
{
    if((ceil(guide.y / 32) * 32) != y)
    {
        if(place_meeting(x,y - 32,player))
        {
            player.y = y - 32 - 10;
        }
        isMove = true;
    }
}
else if(dir == "down")
{
    if((floor(guide.y / 32) * 32) != y)
    {
        if(place_meeting(x,y + 32,player))
        {
            player.y = y + 32 + 32 + 23;
        }
        isMove =true;
    }
}

if(isMove)
{
    child.tmpX = x;
    child.tmpY = y;
    if(dir == "left")
    {
        x = ceil(guide.x / 32) * 32;
    }
    else if(dir == "right")
    {
        x = floor(guide.x / 32) * 32;
    }
    else if(dir == "up")
    {
        y = ceil(guide.y / 32) * 32;
    }
    else if(dir == "down")
    {
        y = floor(guide.y / 32) * 32;
    }
    with(child)
    {
        event_user(0);
    }
    isMove = false;
    alarm[0] = 1;
}
*/
if(abs(guide.x - x) >= 32 || abs(guide.y - y) >= 32)
{
    if(dir == "left")
    {
        if(place_meeting(x-32,y,player))
        {
            player.x = x - 32 - 6;
        }
        isX = true;
    }
    else if(dir == "right")
    {
        if(place_meeting(x+32,y,player))
        {
            player.x = x + 32 + 32 + 6;
        }
        isX = true;
    }
    else if(dir == "up")
    {
        if(place_meeting(x,y - 32,player))
        {
            player.y = y - 32 - 10;
        }
        isY = true;
    }
    else if(dir == "down")
    {
        if(place_meeting(x,y + 32,player))
        {
            player.y = y + 32 + 32 + 23;
        }
        isY = true;
    }
    child.tmpX = x;
    child.tmpY = y;   
    signX = sign(guide.x - x);
    signY = sign(guide.y - y);
    if(isX)
    {
        x += 32 * signX;
    }
    if(isY)
    {
        y += 32 * signY;
    }
    isX = false;
    isY = false;
    with(child)
    {
        event_user(0);
    }
    sound_fix(sndJump1);
    alarm[0] = 1;
}

/* */
if instance_exists(b)
{
    b.x = x;
    b.y = y;
}

/* */
/*  */
