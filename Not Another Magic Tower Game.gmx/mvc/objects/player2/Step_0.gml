var __b__;
__b__ = action_if(global.player_alive);
if !__b__
{
{
mask_index = sprEmpty;

exit;
}
}
//�f�o�b�O�p�i���S���ƌo�ߎ��Ԃ̕`��j
room_caption = global.room_caption_def + " Death["+string(global.savenum)+"]:"+string(global.death[global.savenum]);

global.hour[global.savenum]=global.time[global.savenum] div 3600;
global.atime[global.savenum]=global.time[global.savenum] mod 3600;
global.muni[global.savenum]=global.atime[global.savenum] div 60;
global.sec[global.savenum]=global.atime[global.savenum] mod 60;

room_caption += " Time["+string(global.savenum)+"]:"+string(global.hour[global.savenum])+":"+string(global.muni[global.savenum])+":"+string(global.sec[global.savenum]);





var L,R,h;
//���E�̃L�[���͂̃`�F�b�N
L = keyboard_check_direct(global.leftbutton);
R = keyboard_check_direct(global.rightbutton);

//�E�{�^��������Ă���ΉE
//�E�{�^��������Ă��Ȃ���Ԃō��{�^��������Ă���΍�
h = R;
if(h == 0){
  h = -L;
}

//frozen�ɒl�������Ă���΍s���֎~
if(frozen == true){
  h = 0;
}

//���E�̈ړ�
if(h != 0){
//�摜�̍��E��w��i��������Ɖ摜�����E���]����j
if(distance_to_object(WalljumpR) != 1 && distance_to_object(WalljumpL) > 1){
image_xscale = h;
}  
if((h=-1 && distance_to_object(WalljumpR) != 1) || (h=1 && distance_to_object(WalljumpL) > 1)){
//�����Ă����Ԃɂ���
if(!place_meeting(x,y-4,slipblock)){  
  hspeed = maxSpeed*h;
  }else{
  if((h=1 && hspeed<maxSpeed) || (h=-1 && hspeed>-maxSpeed))hspeed +=instance_position(x,y-10,slipblock).slip*h
  }
  //�����Ă���摜�ɕύX
  sprite_index = sprPlayerRunning;
  image_speed = 0.5;
}
}else{
if(!place_meeting(x,y-4,slipblock)){
  //������Ԃɂ���
  hspeed = 0;
  }else{
  if(hspeed!=0)hspeed -=instance_position(x,y-10,slipblock).slip*sign(hspeed)
  }
  //�����摜�ɕύX
  sprite_index = sprPlayerIdle;
  image_speed = 0.2;
}

//������ɏ���Ă��Ȃ���
if (onPlatform == false){
  //�W�����v�E�����摜�ɕύX
  if(vspeed < -0.05){
    sprite_index = sprPlayerFall;
  }
  if(vspeed > 0.05){
    sprite_index = sprPlayerJump;
  }
}
//������ɏ���Ă��Ԃ��������ꂽ�u��
else{
  if(place_meeting(x,y-4,platform) == false){
    onPlatform = 0;
  }
}

//vspeed���ő�l�𒴂�����A�ő�l�ɌŒ�
if(abs(vspeed) > maxVspeed){
  vspeed = sign(vspeed)*maxVspeed;
}

//frozen�ɒl�������Ă��Ȃ��i�s���\�j
if(frozen == false){
    //�v���C���[�̍U��
    if(keyboard_check_pressed(global.shotbutton)){
      playerShoot();
    }
    //�W�����v�i�������j
    if(keyboard_check_pressed(global.jumpbutton)){
      playerJump();
    }
    //�W�����v�i�������j
    if(keyboard_check_released(global.jumpbutton)){
      playerVJump();
    }
}

/*
//�h�b�g�����L�[
//A�ō��ɁAD�ŉE�ɂP�h�b�g�ړ��ł��܂�
//�f�t�H���g�ł̓I�t�ł�
if(place_meeting(x,y-1,block) || place_meeting(x,y-1,solidblock)){
if(keyboard_check_pressed(ord('A'))) hspeed-=1;
if(keyboard_check_pressed(ord('D'))) hspeed+=1;
}
*/

/* */

if distance_to_object(WalljumpL) < 2 && place_free(x,y+1) {

vspeed=-2;
maxFallSpeed=-2;
sprite_index=sprPlayerSliding;
image_xscale=1
image_speed=1/2;


    if keyboard_check_pressed(global.rightbutton) && keyboard_check(global.jumpbutton) {
    sprite_index=sprPlayerJump;
    maxFallSpeed=-8
    vspeed = 9;
    hspeed = 15;
    sound_fix(snd_wallum);
    
    }
    
    if keyboard_check_pressed(global.rightbutton) && !keyboard_check(global.jumpbutton) {
    hspeed=3
    maxFallSpeed=-8
    sprite_index=sprPlayerFall;
    }

}

if distance_to_object(WalljumpL) > 1 && place_free(x,y+1) {
maxFallSpeed=-8
}


if distance_to_object(WalljumpR) = 1 && place_free(x,y+1) {

vspeed=-2;
maxFallSpeed=-2;
sprite_index=sprPlayerSliding;
image_xscale=-1
image_speed=1/2;

    if keyboard_check_pressed(global.leftbutton) && keyboard_check(global.jumpbutton) {
    sprite_index=sprPlayerJump;
    maxFallSpeed=-8
    vspeed = 9;
    hspeed = -15;
    sound_fix(snd_wallum);
    }
    
    if keyboard_check_pressed(global.leftbutton) && !keyboard_check(global.jumpbutton) {
    hspeed=-3
    maxFallSpeed=-8
    sprite_index=sprPlayerFall;
    }

}

if distance_to_object(WalljumpR) > 1 && place_free(x,y+1) {
maxFallSpeed=-8
}

/* */
if(global.grav=0){
global.image_xscale=image_xscale
instance_create(x,y+4,player)
instance_destroy()
}

/* */
/*  */
