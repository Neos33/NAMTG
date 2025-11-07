var ammount = 3 + (fhp - hp) / 5;
repeat(ammount)
{
    instance_create(x + sprite_width / 2, y + sprite_height / 2, obj_4B6YellowApple);
}
if(hp == 0)
{
    alarm[2] = 350;
}

