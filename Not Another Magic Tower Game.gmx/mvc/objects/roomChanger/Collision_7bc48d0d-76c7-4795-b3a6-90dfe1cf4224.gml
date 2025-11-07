//���[����ړ�����i���[�v�j
//onCollide�Ƃ�roomTo�͎qObject�i��arp�Ƃ��j�������Ă܂�
if(onCollide == true){
  room_goto(roomTo);
  if(warpX=0 && warpY=0){
  with(player2){
    instance_destroy();
  }
  with(bow){
    instance_destroy();
  }
  }else{
  player2.x=warpX
  player2.y=warpY
  }
}
/**
Room�ɔz�u����Ă���roomChanger��
Ctrl�����Ȃ���E�N���b�N�����
�uCreationCode�v��I����Ē���`���ĉ������B
�����ŁA�Đ�����ړ�����悪�錾����Ă��܂��B
**/

/* */
/*  */
