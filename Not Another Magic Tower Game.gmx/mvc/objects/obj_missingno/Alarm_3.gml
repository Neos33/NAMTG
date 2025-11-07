if(viewShift < 2)
{
    ind = floor(irandom_range(0,375)/100);
}
else
{
    ind = irandom_range(0,2);
}
event_user(ind);
if(ind < 3)
{
    with(obj_pokemonBattleDialog)
    {
        msg = other.name + " uses ???.";
        event_user(0);
    }
}
else
{
    with(obj_pokemonBattleDialog)
    {
        msg = other.name + " uses Perspective Confusion.";
        event_user(0);
    }
}


