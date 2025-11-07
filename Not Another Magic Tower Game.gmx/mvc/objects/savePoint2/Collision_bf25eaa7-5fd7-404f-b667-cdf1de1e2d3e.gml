//�Z�[�u���āA��莞�ԃZ�[�u�s�ɂ���
if(saveTimer < 0 && instance_exists(player2) == true){
  saveTimer = 30;
  image_index = 1;
  image_speed = 0.017;
  AutoBackup();
  saveGame();
}

