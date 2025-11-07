if(targeted)
{
    x = mouse_x;
    y = mouse_y;
    depth = -10002;
}
else
{
    depth = -10000;
}

if(!place_meeting(x,y,obj_galleryBrCard))
{
    image_blend = c_white;
    target = noone;
}

