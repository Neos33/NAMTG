if(mouse_check_button_pressed(mb_left))
{
    if(!target)
    {
        target = other.id;
        other.targeted = true;   
    }
}


