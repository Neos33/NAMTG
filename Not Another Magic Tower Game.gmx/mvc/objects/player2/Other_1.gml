var __b__;
__b__ = action_if(global.player_alive);
if !__b__
{
{
exit;
}
}
//��ʂ̊O�ɏo���Ƃ��̔���
var changeRoom,roomTo;

//���[���̊O�ɋ��邩�ǂ����̃`�F�b�N
changeRoom = outsideRoom();

if(changeRoom == true){
  //�߂���roomChanger���L��΁A����roomTo�̃��[���Ɉړ��B������Ύ��S
  roomTo = instance_position(x,y,roomChanger).roomTo;  
  if(place_meeting(x,y,roomChanger) == false){
    killPlayer();
  }
  else{
      room_goto(roomTo);
  }
}
  //���W���킹�i���[���̃T�C�Y�������łȂ��Ƌ������ςɂȂ�܂��j
  if(x < 0){
    x = room_width-16;
    y -= vspeed;
    changeRoom = true;
  }
  else if(x > room_width){
    x = 16;
    y -= vspeed;
    changeRoom = true;
  }
  else if(y < 0){
    y = room_height-16;
    x = xprevious;
    changeRoom = true;
  }
  else if(y > room_height){
    y = 16;
    x = xprevious;
    changeRoom = true;
  }

