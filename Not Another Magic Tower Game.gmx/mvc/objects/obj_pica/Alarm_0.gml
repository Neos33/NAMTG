var a=instance_create(x,y,obj_pica_cherry);
a.direction=-90+sin(degtorad(random(360)))*180//random(360)
a.speed=7+3*sin(degtorad(random(360)))
a.dirspd=random_range(-0.5,0.5)
var rng=random_range(0.5,1);
a.image_xscale=rng
a.image_yscale=rng
a.sprite_index=choose(spr_pica_cCyan,spr_pica_cGreen,spr_pica_cWhite);
a.depth=depth+1;
alarm[0] = almspd;

