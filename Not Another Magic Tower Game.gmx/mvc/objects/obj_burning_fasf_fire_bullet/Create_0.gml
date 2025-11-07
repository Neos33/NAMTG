action_inherited();
direction=choose(30,60,90,120,150,180,210,240,270,300,330,360);
alarm[0]=250;
speed=choose(8,10,12);

emit2=part_emitter_create(obj_burningFasf_combat.explosion);

part_emitter_region(obj_burningFasf_combat.explosion,emit2,x,x+5-random(10),y,y+5-random(10),ps_shape_ellipse,ps_distr_linear);
image_speed = 1/6;
isStable = true;

