//�J�[�\���ړ�
if(keyboard_check_pressed(global.leftbutton) == true){
  sound_fix(sndJump);
  select -= 1;
  if(select < 1){
    select = 3;
  }
}else if(keyboard_check_pressed(global.rightbutton) == true){
  sound_fix(sndJump);
  select += 1;
  if(select > 3){
    select = 1;
  }
}else if(keyboard_check_pressed(global.jumpbutton) == true){
  global.savenum = select;
  room_goto(rSelectStage);
}

