if(keyboard_check_pressed(global.upbutton))
{
    ind += 1;
    if(ind == choiceCount) ind = 0;
}

if(keyboard_check_pressed(global.downbutton))
{
    if(ind == 0) ind = choiceCount - 1; 
}

if(!choiceMade)
{
    if(keyboard_check_pressed(global.jumpbutton) || keyboard_check_pressed(vk_enter))
    {
        event_user(ind);
        choiceMade = true;
    }
}

