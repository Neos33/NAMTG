/*if(place_meeting(x,y,bullet)){
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
}*/
if(!stop){
//if(cooldown == 0){
    gravity_direction = point_direction(x,y,400,304);//player.x,player.y);
//}
image_angle = direction - 90;
if(speed > 16){
    speed -= 0.5;
}
}
if(ttt == 2){
    a=instance_create(x,y,obj_diaShadow);
    a.sprite_index=spr_diaShadow;
    a.depth = depth + 1;
    ttt = 0;
}
ttt += 1;

/* */
/*  */
