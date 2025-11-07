x = __view_get( e__VW.XView, 0 ) - global.dashboardWidth + global.menuPos + offsetX;
y = __view_get( e__VW.YView, 0 ) + offsetY;
if(checkMouse(x, y, x + sprite_width, y + sprite_height))
{
    if(mouse_check_button_released(mb_left))
    {
     global.currentObj = obj;
     global.currentSpr = spr;
     with(obj_designDashboardElementPrototye)
     {
      selected = false;
     }
     selected = true;
     obj_designController.selectedIndex = ds_list_find_index(obj_designDashboard.itemList, object_index);
    }
}

