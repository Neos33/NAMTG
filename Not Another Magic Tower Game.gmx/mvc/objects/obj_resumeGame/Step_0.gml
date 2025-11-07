carousel_object_step_scr();

if(image_xscale > 0.9)
{
    if(keyboard_check_pressed(global.jumpbutton) ||
    (mouse_check_button_pressed(mb_left)
    && mouse_x > (x - sprite_width / 2)
    && mouse_x < (x + sprite_width / 2) 
    && mouse_y > (y - sprite_height / 2) 
    && mouse_y < (y + sprite_height / 2)))
    {
        if(file_exists("save1"))
        {
        global.savenum = 1;
        loadAchievements();
        loadGame();    
        saveFix_v998();
        }
    }
}

