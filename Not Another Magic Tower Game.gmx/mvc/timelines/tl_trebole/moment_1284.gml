obj_tre_at1.visible=0;
obj_tre_blend.spd=-0.1;
obj_tre_blend.alarm[0]=1;
obj_tre_bg.bg=2;
with(block){
    instance_destroy()
}
tile_layer_delete(1000000);
a=instance_create(0,0,block);
a.image_xscale=25;
a=instance_create(0,0,block);
a.image_yscale=19;
a=instance_create(768,0,block);
a.image_yscale=19;
a=instance_create(0,576,block);
a.image_xscale=25;
alarm[10]=1;
global.reverse = !global.reverse;
with(player){
    yflag = -yflag;
    player.y += yflag * 8;
    curJumps = 1;
    vspeed = 0;
}

