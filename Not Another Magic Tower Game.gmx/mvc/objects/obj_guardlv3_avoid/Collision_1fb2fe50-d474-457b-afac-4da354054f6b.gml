sound_fix(sndDeath)
repeat(16)
{
    var aa=instance_create(x,y,obj_cherry);
    aa.sprite_index=spr_colorful_cherry;
    aa.image_index=irandom(5);
    aa.speed=4+irandom(3);
    aa.direction=irandom(360);
    aa.image_xscale=0.5;
    aa.image_yscale=0.5;
}
instance_destroy();

