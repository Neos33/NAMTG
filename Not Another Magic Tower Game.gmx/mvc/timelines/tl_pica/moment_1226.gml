with(obj_pica_cherry2){
    if(num==0){
        vspeed *= 15;
        friction = cal_friction(30,200);
    }
    if(num==1){
        hspeed *= 15;
        friction = cal_friction(40,266.7)
    }
}


a=instance_create(180,700,obj_pica_cherry_giant)
a.NO=true
a.pose=true
a.sprite_index=spr_pica_cYellow
a.xxx=180
a.yyy=150
a=instance_create(180,700,obj_pica_cherry_giant)
a.NO=true
a.pose=true
a.sprite_index=spr_pica_cOrange
a.xxx=180
a.yyy=450

a=instance_create(620,700,obj_pica_cherry_giant)
a.NO=true
a.pose=true
a.sprite_index=spr_pica_cPink
a.xxx=620
a.yyy=150
a=instance_create(620,700,obj_pica_cherry_giant)
a.NO=true
a.pose=true
a.sprite_index=spr_pica_cRed
a.xxx=620
a.yyy=450

