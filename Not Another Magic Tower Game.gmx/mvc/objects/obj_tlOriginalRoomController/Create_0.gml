alarm[0] = 1;
alarm[1] = 50;
with(obj_tlPlatform1)
{
    image_blend = make_color_rgb(255,96,0);
}
with(obj_tlPillar)
{
    image_blend = make_color_rgb(255,96,0);
}
with(obj_tlWater1)
{
    alarm[3] = 1;
}
instance_create(0,0,obj_tlBGFireController);

with(instance_create(400,240,obj_tlStartDarkHole))
{
    image_xscale = 4;
    image_yscale = 4;
}
__background_set( e__BG.Blend, 0, make_color_rgb(255,128,0) );

baseStart = 50;
alarm[2] = baseStart;
alarm[3] = baseStart + 100;
alarm[4] = baseStart + 200;
alarm[5] = baseStart + 300;

