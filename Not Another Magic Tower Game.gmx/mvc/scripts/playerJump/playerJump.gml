//�W�����v����������i������^����j
if(global.reverse == 0)
{
    jumpDir = 1;
}
else
{
    jumpDir = -1;
}
if(global.grav=0){
//�n�ʂɐڂ��Ă���@�܂��́@������ɏ���Ă���
    if(global.reverse == 0)
    {
        if(place_meeting(x,y+1,block) || onPlatform || place_meeting(x,y+1,objwater) || place_meeting(x,y+1,solidblock)|| (!onblock && place_meeting(x,y+1,obj_wall))){
            audio_playsound(sndJump);
            vspeed = -jump * jumpDir;
            djump = true;
            onblock+=1;
        }
        //�󒆂ɕ����Ă��ԂŁA�Q�i�ڂ̃W�����v���c���Ă��鎞
        else if(djump == true || place_meeting(x,y+1,objwater2)){
            vspeed = -jump2 * jumpDir;
            sprite_index = sprPlayerJump;
            audio_playsound(sndDJump);
            djump = false;
        }
    }
    else
    {
        if(place_meeting(x,y-1,block) || onPlatform || place_meeting(x,y-1,objwater)
        || place_meeting(x,y-1,solidblock) ||(!onblock && place_meeting(x,y-1,obj_wall))){
            audio_playsound(sndJump);
            vspeed = -jump * jumpDir;
            djump = true;
            onblock+=1;
        }
        //�󒆂ɕ����Ă��ԂŁA�Q�i�ڂ̃W�����v���c���Ă��鎞
        else if(djump == true || place_meeting(x,y-1,objwater2)){
            vspeed = -jump2 * jumpDir;
            sprite_index = sprPlayerJump;
            audio_playsound(sndDJump);
            djump = false;
        }
    }
}
else{
//�n�ʂɐڂ��Ă���@�܂��́@������ɏ���Ă���
if(place_meeting(x,y-1,block) || onPlatform || place_meeting(x,y-1,objwater)
    || place_meeting(x,y-1,solidblock) ||(!onblock && place_meeting(x,y-1,obj_wall))){
    vspeed = -jump * jumpDir;
    audio_playsound(sndJump);
    djump = true;
}
//�󒆂ɕ����Ă��ԂŁA�Q�i�ڂ̃W�����v���c���Ă��鎞
else if(djump == true || place_meeting(x,y-1,objwater2)){
    vspeed = -jump2 * jumpDir;
    audio_playsound(sndDJump);
    djump = false;
}
}

