if(!transfered)
{
    transfered = true;
    player.x = x + 17;
    player.y = y + 23;
    player.frozen = true;
    player.image_alpha = 0;
    bow.image_alpha = 0;
    instance_create(x+16,y+16,obj_faroMMMPlayer);
}

