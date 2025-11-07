spr = -1;
xscale = 1;
yscale = 1;
gHp = 0;
triggered = false;
combatObj = 0;
mHp = 0;
bossDmg = 0;
hitDmg = 0;
roomTo = rBegining;
txt = "";


image_xscale = 1.5;
image_yscale = 1.5;
if(spr == -1)
{
    spr = spr_rotateQuestionMark;
}
sprWidth = sprite_get_width(spr);
sprHeight = sprite_get_height(spr);
m = instance_create(x, y-sprHeight*yscale/2+16,obj_galleryMonster);
m.sprite_index = spr;
m.image_xscale = xscale;
m.image_yscale = yscale;
image_speed = 0.5;


