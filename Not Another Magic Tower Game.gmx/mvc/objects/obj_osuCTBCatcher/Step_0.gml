moveCalc = x;
if(keyboard_check_direct(global.jumpbutton))
{
    if(time mod 4 == 0)
    {
        shadowEffect = instance_create(x,y,obj_osuCTBCatcherDashEffect);
        shadowEffect.image_xscale *= sign(image_xscale);
    }
    dash = true;
}
if(keyboard_check_direct(global.leftbutton))
{
    if(dash)
    {
        moveCalc = RangeClamp(x - baseMove * 2,sprite_width/2,800-sprite_width/2);
    }
    else
    {
        moveCalc = RangeClamp(x - baseMove,sprite_width/2,800-sprite_width/2);
    }
    image_xscale = -1;
    
}
else if(keyboard_check_direct(global.rightbutton))
{
    if(dash)
    {
        moveCalc = RangeClamp(x + baseMove * 2,sprite_width/2,800-sprite_width/2);
    }
    else
    {
        moveCalc = RangeClamp(x + baseMove,sprite_width/2,800-sprite_width/2);
    }
    image_xscale = 1;
}
if(moveCalc < 96)
{
    moveCalc = 96;
}
x = moveCalc;
time += 1;

if(dash)
{
    if(!keyboard_check_direct(global.jumpbutton))
    {
        dash = false;
    }
}

