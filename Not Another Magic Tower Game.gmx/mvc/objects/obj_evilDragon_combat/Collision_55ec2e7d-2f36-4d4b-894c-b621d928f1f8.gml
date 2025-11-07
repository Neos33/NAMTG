if(!cooldown)
{
    changeCoolDown = true;
}
event_inherited();
if(changeCoolDown)
{
    cooldown = 5;
}

