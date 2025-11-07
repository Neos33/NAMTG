if(collision_rectangle(x-1,y-1,x+33,y+35, player, true, true) && !isOpen)
{
    
    if(keyboard_check_pressed(global.doorButton) && global.clearItem[cInd] && (collision_rectangle(x-1,y+1,x+33,y+35, player, true, true) || keyboard_check(global.downbutton)))
    {
        isOpen = true;

        global.clearDoors[ind] = true;
        alarm[0] = 1;
    }
}

