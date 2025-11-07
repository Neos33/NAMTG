triggered = false;
spr = 0;
atk = 0;
def = 0;
hp = 0;
obj = objDummy;
txt = "";


sprWidth = sprite_get_width(spr);
sprHeight = sprite_get_height(spr);
image_xscale = 1.5;
image_yscale = 1.5;
m = instance_create(x-sprWidth/2, y-sprHeight/2,obj_galleryMonster);
m.sprite_index = spr;
image_speed = 0.5;

