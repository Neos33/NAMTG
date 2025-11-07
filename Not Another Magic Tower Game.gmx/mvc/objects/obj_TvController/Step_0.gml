time += 1;

if(keyboard_check_pressed(vk_backspace) && player_is_alive())
{
    //transition_kind = 21;
    //transition_steps = 100;
    player.x = 704 + 17;
    player.y = 96 + 23;
    room_goto(r10F);
}

