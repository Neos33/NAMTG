x = __view_get( e__VW.XView, 0 ) - 128 + global.menuPos + 48;
y = __view_get( e__VW.YView, 0 ) + 540;
if(checkMouse(x,y,x+sprite_width,y+sprite_height))
{
    if(mouse_check_button_released(mb_left))
    {
        saveGDDesign(global.gdFile);
        show_message("Saved.");
    }
}

