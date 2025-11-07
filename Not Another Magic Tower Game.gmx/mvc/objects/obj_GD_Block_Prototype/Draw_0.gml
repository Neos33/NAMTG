draw_current();
if(object_index == obj_GD_Ground || object_index == obj_GDBlock2)
    exit;
//if(inProcess)
//    exit;
draw_set_color(c_white);
draw_set_alpha(image_alpha);
if(!instance_position(x-32,y,obj_GD_Block_Prototype))
{
    draw_line(x,y,x,y+32);
    test1 = true;
}
else
{
    test1 = false;
}
if(!instance_position(x+32,y,obj_GD_Block_Prototype))
{
    draw_line(x+31,y,x+31,y+32);
    test2 = true;
}
else
{
    test2 = false;
}
if(!instance_position(x,y-32,obj_GD_Block_Prototype))
{
    draw_line(x,y,x+32,y);
    test3 = true
}
else
{
    test3 = false;
}
if(!instance_position(x,y+32,obj_GD_Block_Prototype))
{
    draw_line(x,y+32,x+32,y+32);
    test4 = true;
}
else
{
    test4 = false;
}



draw_reset_color();

