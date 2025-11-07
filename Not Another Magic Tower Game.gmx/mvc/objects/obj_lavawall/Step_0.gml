if(global.special[9])
{
    if(collision_rectangle(x-1,y-1,x+33,y+35, player, true, true) && !isOpen)
    {
        if(keyboard_check_pressed(global.doorButton))
        {
            isOpen = true;
            alarm[0] = 1;
        }
    }
}
if(isOpen)
{
    alpha += 0.01;
}
event_inherited();

