//�J�[�\���ړ�
if(global.difselect=0){
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
  global.difselect=1
  difname=0
  if (file_exists("save" + string(select))){ difname=-1 }
}


}else{


if (keyboard_check_pressed(global.leftbutton) == true) {
    sound_fix(sndJump);
    difname -= 1;
    if (difname =-1) {
    if (file_exists("save" + string(global.savenum)) = false){ difname=3 }
    }
    if (difname < -1) {
        difname = 3;
    }
} else if (keyboard_check_pressed(global.rightbutton) == true) {
    sound_fix(sndJump);
    difname += 1;
    if (difname > 3) {
        difname = -1;
    }
    if (difname =-1) {
    if (file_exists("save" + string(global.savenum)) = false){ difname=0 }
    }
    
} else if(keyboard_check_pressed(global.shotbutton) == true) {
    global.savenum = 0
    global.difselect=0
    
} else if(keyboard_check_pressed(global.jumpbutton) == true) {
dif=difname
if (dif < 0) {
    loadGame();
} else {
    global.difficulty = dif;
    if(file_exists("save"+string(global.savenum)) == true){
      file_delete("save"+string(global.savenum));
    }
    global.death[global.savenum] = 0;
    global.time[global.savenum] = 0;
    room_goto(rStage01);
    event_inherited();
}


}
}


