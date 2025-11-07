if(isDiverse && !isDiverseInit)
{
    global.leftbutton = right;
    global.rightbutton = left;
    instance_create(player.x,player.y - 36, obj_dizzy);
    isDiverseInit = true;
}

