with(obj_pica_arrow){
    vspeed=1.5;
}
tile_layer_delete(1000000);
with(block)instance_destroy();
for(i=0;i<=40;i+=1){
    xx = 20*i;
    yy = -0.00285*xx*(xx-800)+608;
    a=instance_create(xx,yy,obj_pica_cherry2);
    a.sprite_index = spr_pica_cCyan;
    a.vspeed = -2;
    a.num = 0;
    a.NO = 1;
}

for(i=0;i<=40;i+=1){
    xx = 20*i;
    yy = 0.00285*xx*(xx-800);
    a=instance_create(xx,yy,obj_pica_cherry2);
    a.sprite_index = spr_pica_cViolet;
    a.vspeed = 2;
    a.num = 0;
    a.NO = 1;
}

for(i=0;i<=30;i+=1){
    yy = 4+20*i;
    xx = 600/304/304*yy*(yy-608);
    a=instance_create(xx,yy,obj_pica_cherry2);
    a.sprite_index = spr_pica_cPink;
    a.hspeed = 2.67;
    a.num = 1;
    a.NO = 1;
}

for(i=0;i<=30;i+=1){
    yy = 4+20*i;
    xx = 800-600/304/304*yy*(yy-608);
    a=instance_create(xx,yy,obj_pica_cherry2);
    a.sprite_index = spr_pica_cAzure;
    a.hspeed = -2.67;
    a.num = 1;
    a.NO = 1;
}

