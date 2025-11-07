percent = sin(n*pi/maxnum);
if n == 0
{
    dir = random(360);
}
event_user(0);
n+=1;
if n<=maxnum
{
    alarm[0]=1;
}
else{
    alarm[0]=0;
}

