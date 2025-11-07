if(speed > 0)
{
    speed -= a;
}
else if(!boom)
{
    speed = 0;
    boom = true;
    alarm[3] = 1;
}

