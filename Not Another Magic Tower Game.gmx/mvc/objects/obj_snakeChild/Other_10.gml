if(index > 0)
{
    child.tmpX = x;
    child.tmpY = y;
}
x = tmpX;
y = tmpY;
if(index > 0)
{
    with(child)
    {
        event_user(0);
    }
}

