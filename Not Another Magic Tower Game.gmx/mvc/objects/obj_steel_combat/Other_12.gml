if(!sound_isplaying(sndExpMax))
{
    sound_fix(sndExpMax);
    if(instance_exists(obj_steelRecover))
    {
        with(obj_steelRecover)
        {
            instance_destroy();
        }
    }
    instance_create(x,y, obj_steelRecover);
    flash = instance_create(x+32,y+32,obj_levelupFlash);
    flash.image_xscale = 3;
    flash.image_yscale = 3;
    alarm[3]=100;
}
isWeakened = false;
x=384;
y=288;
speed=0;
attackflag=0;
ppp=0;
gravity=0;
isRecovered = true;
sprite_index = spr_steel;

