hOffset -= 0.2;
vOffset += obj_towerDrawer.vspd;
if(hOffset <= -sprite_width)
{
    hOffset += sprite_width;
}
if(vOffset >= sprite_height)
{
    vOffset -= sprite_height;
}
else if(vOffset <= -sprite_height)
{
    vOffset += sprite_height;
}

