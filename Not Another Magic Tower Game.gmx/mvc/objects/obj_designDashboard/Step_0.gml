if(checkMouse(__view_get( e__VW.XView, 0 ) + global.menuPos, __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + global.menuPos + 16, __view_get( e__VW.YView, 0 ) + 608))
{
    if(mouse_check_button_pressed(mb_left))
    {
     if(global.menuPos > 0)
     {
      alarm[1] = 1;
     }
     else
     {
      alarm[0] = 1;
     }
    }
}

