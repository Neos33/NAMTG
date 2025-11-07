if(!checkMouse(__view_get( e__VW.XView, 0 ) - global.dashboardWidth + global.menuPos, __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + 16 + global.menuPos, __view_get( e__VW.YView, 0 ) + 608) && !obj_soundProgressControl.checked && !obj_soundPauseResume.checked)
{
    if(checkMouse(__view_get( e__VW.XView, 0 ) + global.menuPos + 16, __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + 800, __view_get( e__VW.YView, 0 ) + 608))
    {
        isDraw = true;
        if(mouse_check_button_released(mb_left))
        {
            isDraw = false;
            objx = floor(mouse_x / gridSize) * gridSize;
            objy = floor(mouse_y / gridSize) * gridSize;
            instance_create(objx, objy, global.currentObj);
        }
    }
}
else
{
 isDraw = false;
}

if(keyboard_check_pressed(vk_tab))
{
    with(obj_designDashboardElementPrototye)
    {
     selected = false;
    }
    index = obj_designController.selectedIndex;
    if(index < (ds_list_size(obj_designDashboard.itemList) - 1))
    {
        index += 1;
        obj_designController.selectedIndex += 1;
        with(ds_list_find_value(obj_designDashboard.itemList, obj_designController.selectedIndex))
        {
            selected = true;
            global.currentObj = obj;
            global.currentSpr = spr;
        }
    }
    else
    {
        index = 0; 
        obj_designController.selectedIndex = 0;
        with(ds_list_find_value(obj_designDashboard.itemList, obj_designController.selectedIndex))
        {
            selected = true;
            global.currentObj = obj;
            global.currentSpr = spr;
        }
    }
}

