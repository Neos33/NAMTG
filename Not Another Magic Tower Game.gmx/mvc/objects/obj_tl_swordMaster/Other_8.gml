if(bounceCount > 0)
{
    bounceCount -= 1;
    alarm[10] = 1;
}
else
{
    evtInd = 4;
    countdown = 15;
    status = 3;
}

