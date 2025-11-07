//�v���C���[�̈ʒu�ɉ����ăJ������ړ��i�r���[����j
if(global.grav=0){
if(player_is_alive() == true){
  __view_set( e__VW.XView, 0, floor(player.x/800)*800 );
  __view_set( e__VW.YView, 0, floor(player.y/608)*608 );
}
}else{
if(instance_exists(player2) == true){
  __view_set( e__VW.XView, 0, floor(player2.x/800)*800 );
  __view_set( e__VW.YView, 0, floor(player2.y/608)*608 );
}
}

