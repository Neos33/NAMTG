if(place_meeting(x,y,bullet)){
    with(instance_place(x,y,bullet))instance_destroy();
    if(image_alpha == 1){
        obj_diamante.nowHP -= 1;
        image_alpha = 0.5;
        alarm[6] = 40;
        audio_playsound(sndBossHit);
        if(obj_diamante.nowHP == 0){
            instance_destroy();
        }
    }
}
if pose {
speed = (point_distance(x,y,xx,yy))/15;
direction = point_direction(x,y,xx,yy);
}
if shadow{
    if(ttt == 2 - blur){
        a=instance_create(x,y,obj_diaShadow);
        a.sprite_index=spr_diaShadow;
        a.depth = depth + 1;
        ttt = 0;
    }
    ttt += 1;
}


if go{
    hspeed+=sign(hspeed)*0.23;
    vspeed+=sign(vspeed)*0.017;
    if(abs(hspeed)>25 && blur=0){
        blur=1;
    }
}

