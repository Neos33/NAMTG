if(attackflag=3 && instance_number(obj_steel_enemy3)=0 && !isBreak && !isWeakened){
    isBreak=true;
    
    gravity=0.1;
    audio_playsound(sndbrake);
    frag = instance_create(x + 32,y + 12,obj_steelFragment);
    frag.sprite_index = spr_steelFragment3_centered;
    frag.hspeed = 1;
    frag.ang = -1;
    audio_playsound(sndbrake);
    frag1 = instance_create(x + 32,y + 52,obj_steelFragment);
    frag1.sprite_index = spr_steelFragment4;
    frag1.hspeed = -1;
    frag1.ang = 1;
    instance_create(x + 32, y + 32, bullet);
    sprite_index = spr_steelAllLose;
    isWeakened =true;
    alarm[10] = 1;
}


if(attackflag=2 && instance_number(obj_steel_enemy2)=0 && !isBreak){
    isBreak = true;;
    
    //gravity=0.1;
    audio_playsound(sndbrake);
    frag = instance_create(x + 56,y + 32,obj_steelFragment);
    frag.sprite_index = spr_steelFragment2_centered;
    frag.hspeed = 1;
    frag.ang = -1;
    instance_create(x + 32, y + 32, bullet);
    sprite_index = spr_steelRightLose;
    alarm[3]=75;
}


if(attackflag=1 && instance_number(obj_steel_enemy1)=0 && !isBreak){
    isBreak = true;
    audio_playsound(sndbrake);
    frag = instance_create(x + 8,y + 32,obj_steelFragment);
    frag.sprite_index = spr_steelFragment1_centered;
    frag.hspeed = -1;
    frag.ang = 1;
    instance_create(x + 32, y + 32, bullet);
    sprite_index = spr_steelLeftLose;
    alarm[3]=75;

}
/*if(speed>40)
{
speed=0;
attackflag=0;
ppp=0;
gravity=0;
alarm[3]=30;
}




/* */
/*  */
