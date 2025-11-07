if(frozen)
  exit;
if(keyboard_check_direct(global.leftbutton))
{
    x -= 3;
    image_xscale = -1;
}
if(keyboard_check_direct(global.rightbutton))
{
    x += 3;
    image_xscale = 1;
}

if(frozen)
  exit;
if(keyboard_check_pressed(global.shotbutton))
{
    if(instance_number(bullet) < 4)
    {
        sound_fix(sndShoot);
        b = instance_create(x,y,bullet);
        b.hspeed = 16 * image_xscale;
    }
}

