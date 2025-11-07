//back = 0;

if(checkMouse(x,y,x+sprite_width,y+sprite_height) && mouse_check_button(mb_left) && !back)
{   
    back = true;
    instance_create(256 + 17, 240 + 23,player);
    room_goto(r10F);
}

