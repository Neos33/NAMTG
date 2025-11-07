radius += radSpd;
if(radius > 40)
{
    radSpd -= 1;
    alarm[0] = 1;
}
else
{
    radius = 40;
    radSpd = 15;
    alarm[0] = 40;
}

