var L,R,h;

gravity=0.4

//���E�̃L�[���͂̃`�F�b�N
//L = keyboard_check_direct(global.leftbutton);
//R = keyboard_check_direct(global.rightbutton);

image_yscale = yflag;
if(global.reverse == 0){
    yflag = 1;
    L = keyboard_check_direct(global.leftbutton);
    R = keyboard_check_direct(global.rightbutton);
    gravity_direction = 270;
}
else{
    yflag = -1;
    R = keyboard_check_direct(global.leftbutton);
    L = keyboard_check_direct(global.rightbutton);
    gravity_direction = 90;
}

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
if(h != 0 ){
//�摜�̍��E��w��i��������Ɖ摜�����E���]����j
if(distance_to_object(WalljumpR) != 1 && distance_to_object(WalljumpL) > 1){
image_xscale = h;
}
  if((h=-1 && distance_to_object(WalljumpR) != 1) || (h=1 && distance_to_object(WalljumpL) > 1)){
  //�����Ă����Ԃɂ���
  if(!place_meeting(x,y+4,slipblock)){
  hspeed = maxSpeed*h;
  }else{
  if((h=1 && hspeed<maxSpeed) || (h=-1 && hspeed>-maxSpeed))hspeed +=(instance_position(x,y+10,slipblock).slip)*h
  }
  //�����Ă���摜�ɕύX
  sprite_index = sprPlayerRunning;
  image_speed = 0.5;
  }
}else{
  if(!place_meeting(x,y+4,slipblock)){
  //������Ԃɂ���
  hspeed = 0;
  }else{
  if(hspeed!=0)hspeed-=(instance_position(x,y+10,slipblock).slip)*sign(hspeed)
  }
  //�����摜�ɕύX
  sprite_index = sprPlayerIdle;
  image_speed = 0.2;
}

//������ɏ���Ă��Ȃ���
if (onPlatform == false){
  //�W�����v�E�����摜�ɕύX
  /*if(vspeed < -0.05){
    sprite_index = sprPlayerJump;
  }
  if(vspeed > 0.05){
    sprite_index = sprPlayerFall;
  }*/
  
  if(global.reverse == 0){
        if(vspeed < -0.05){
            sprite_index = sprPlayerJump;
        }
        if(vspeed > 0.05 && !place_meeting(x,y+2,obj_wall)){
            sprite_index = sprPlayerFall;
        }
    }
    else{
        if(vspeed < -0.05 && !place_meeting(x,y-2,obj_wall)){
            sprite_index = sprPlayerFall;
        }
        if(vspeed > 0.05){
            sprite_index = sprPlayerJump;
        }
    }
}
//������ɏ���Ă��Ԃ��������ꂽ�u��
else{
    if(global.reverse == 0){
      if(place_meeting(x,y+4,platform) == false){
        onPlatform = 0;
      }
   }
   else {
       if(place_meeting(x,y-4,platform) == false){
        onPlatform = 0;
      }
   }
}

//vspeed���ő�l�𒴂�����A�ő�l�ɌŒ�
if(abs(vspeed) > maxVspeed){
  vspeed = sign(vspeed)*maxVspeed;
}

if(place_meeting(x, y, obj_wayDown))
{
    if(abs(hspeed) <= 3 && !global.convoyUp && !global.convoyLeft && !global.convoyRight)
    {
        gravity = 0;
        hspeed = 0;
        vspeed = 6;
         global.convoyDown = true;
    }
    else
    {
         global.convoyDown = false;
    }
}
else
{
    global.convoyDown = false;
}

if(place_meeting(x, y, obj_wayUp))
{
    if(abs(hspeed) <= 3 && !global.convoyDown && !global.convoyLeft && !global.convoyRight)
    {
        hspeed = 0;
        vspeed = 0;
        if(place_meeting(x, y - 6, obj_wayUp))
        {       
            y -= 6;
        }
        else
        {
            while(place_meeting(x, y - 1, obj_wayUp))
            {
                y -= 1;
            }
            if(place_meeting(x, y, obj_wayUp))
            {
                y -= 1;
            }
        }    
        global.convoyUp = true;
    }
    else
    {
        global.convoyUp = false;
    }
}
else
{
    global.convoyUp = false;
}


if(place_meeting(x, y, obj_wayLeft))
{
    if(!global.convoyUp && !global.convoyDown && !global.convoyRight)
    {
        gravity = 0;
        hspeed = -6;
        vspeed = 0;
        global.convoyLeft = true;
    }
    else
    {
        global.convoyLeft = false;
    }
}
else
{
    global.convoyLeft = false;
}

if(place_meeting(x, y, obj_wayRight))
{
    if(!global.convoyUp && !global.convoyDown && !global.convoyLeft)
    {
        gravity = 0;
        hspeed = 6;
        vspeed = 0;
        global.convoyRight = true;
    }
    else
    {
        global.convoyRight = false;
    }
}
else
{
    global.convoyRight = false;
}

//frozen�ɒl�������Ă��Ȃ��i�s���\�j
if(frozen == false && !isConvoy){
    //�v���C���[�̍U��    
    if(keyboard_check_pressed(global.shotbutton)){
      playerShoot();
    }
    if(global.special[7] && instance_exists(obj_gather))
    {
        if(keyboard_check_released(global.shotbutton)){
          playerShoot();
        }
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


//�h�b�g�����L�[
//A�ō��ɁAD�ŉE�ɂP�h�b�g�ړ��ł��܂�
//�f�t�H���g�ł̓I�t�ł�
/*
if(place_meeting(x,y+1,block) || place_meeting(x,y+1,solidblock)){
if(keyboard_check_pressed(ord('A'))) hspeed-=1;
if(keyboard_check_pressed(ord('D'))) hspeed+=1;
}
*/
