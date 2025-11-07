if(image_alpha < 1)
{
    image_alpha += 0.015;
    alarm[3] = 1;
}
else
{
    image_alpha = 1;
    var smoke1 = instance_create(x - 12, y + 12, obj_vsDarkSmoke);
    smoke1.alarm[0] = 30;
    var smoke2 = instance_create(x + 12, y + 12, obj_vsDarkSmoke);
    smoke2.alarm[0] = 70;
    alarm[4] = 30;
    time = 300;
}

