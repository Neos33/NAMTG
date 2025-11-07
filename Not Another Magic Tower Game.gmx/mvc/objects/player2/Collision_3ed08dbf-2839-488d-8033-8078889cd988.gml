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
if(y-vspeed/2 >= other.y+15){
  if(other.vspeed >= 0){
    y = other.y+23;
    vspeed = other.vspeed;
    djump = true;
  }
  onPlatform = 1;
  djump = true;
}


