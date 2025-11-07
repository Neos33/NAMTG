var __b__;
__b__ = action_if(global.player_alive);
if !__b__
{
{
exit;
}
}
//������Ƃ̏Փ˔���
//������̏�ɋ�����A������ɂ��������ۂ�����
if(y-vspeed/2 <= other.y){
  if(other.vspeed >= 0){
    y = other.y-9;
    vspeed = other.vspeed;
    djump = true;
  }
  onPlatform = 1;
  djump = true;
}

/*if(global.reverse == 0){
    if(y-vspeed/2 <= other.y){
        if(other.vspeed >= 0){
            y = other.y-9;
            vspeed = other.y-other.yprevious;
            djump=1;
        }
        onPlatform = 1;
        djump=1;
    }
}
else{
    if(y-vspeed/2 >= other.y+15){
        if(other.vspeed >= 0){
            y = other.y+24;
            vspeed = other.y-other.yprevious;
            djump=1;
        }
        onPlatform = 1;
        djump=1;
    }
}

/* */
/*  */
