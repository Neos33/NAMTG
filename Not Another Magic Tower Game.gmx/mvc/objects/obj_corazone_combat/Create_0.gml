event_inherited();
name = "Mr.Corazone";
image_speed = 1/8;
x = 400;
y = -96;
if(global.GalleryBossFight)
{
    global.phase = 2;
}
else
{
    global.phase = ceil(global.attackDamage/4);
}

