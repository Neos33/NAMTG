if(keyboard_check_pressed(global.upbutton) && abs(player.vspeed) < 0.1 && player.y > y && !transfered)
{
    transfered = true;
    player.frozen = true;
    player.image_alpha = 0;
    bow.image_alpha = 0;
    instance_create(0,0,obj_faroMMMWhite);
    instance_create(400, 24 + 23, obj_faroMMMPlayer);
}

