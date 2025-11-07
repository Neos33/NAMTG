var __b__;
__b__ = action_if(global.player_alive);
if !__b__
{
{
exit;
}
}
//�ǂƂ̏Փ˔���

//�O��ɕǂ����鎞
if(place_free(x+hspeed,y) == false){
  if(hspeed <= 0){//��
    move_contact_solid(180,abs(hspeed));
  }
  if(hspeed > 0){//�E
    move_contact_solid(0,abs(hspeed));
  }
  hspeed = 0;
}

//�㉺�ɕǂ����鎞  
if(place_free(x,y+vspeed) == false){
  /*if(vspeed <= 0){//��
    move_contact_solid(90,abs(vspeed));
  }
  if(vspeed > 0){//��
    move_contact_solid(270,abs(vspeed));
    djump=1;
  }*/
  if(global.reverse){
        if(vspeed <= 0){
            move_contact_solid(90,abs(vspeed));
            djump=1;
        }
        if(vspeed > 0){
            move_contact_solid(270,abs(vspeed));
        }
    }
    else{
        if(vspeed <= 0){
            move_contact_solid(90,abs(vspeed));
        }
        if(vspeed > 0){
            move_contact_solid(270,abs(vspeed));
            djump=1;
        }
    }
  
  
  vspeed = 0;
  gravity=0
}

//�΂߂̈ʒu�ɕǂ����鎞
if (place_free(x+hspeed,y+vspeed) == false){
  hspeed=0;
}


/* */
/*  */
