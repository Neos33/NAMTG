if(sprite_index == spr_gayKid)
{
    sprite_index = spr_gayRed;
    blend = c_red;
}
else if(sprite_index == spr_gayRed)
{
    sprite_index = spr_gayBlue;
    blend = c_blue;
}
else if(sprite_index == spr_gayBlue)
{
    sprite_index = spr_gayKid;
    blend = c_purple;
}
alarm[1] = 100;

