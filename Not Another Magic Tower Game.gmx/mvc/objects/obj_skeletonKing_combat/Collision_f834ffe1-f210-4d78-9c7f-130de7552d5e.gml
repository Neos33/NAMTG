
if(place_free(x+hspeed,y) == false){
  if(hspeed <= 0){//��
    move_contact_solid(180,abs(hspeed));
  }
  if(hspeed > 0){//�E
    move_contact_solid(0,abs(hspeed));
  }
  hspeed = 0;
}

if(place_free(x,y+vspeed) == false){
  if(vspeed <= 0){//��
    move_contact_solid(90,abs(vspeed));
  }
  if(vspeed > 0){//��
    move_contact_solid(270,abs(vspeed));
  }
  vspeed = 0;
  if(!onPlatform)
    {
    onPlatform = true;
    isShake = true;
    alarm[3] = 1;
    sound_fix(sndQuake);
    if(phase == 3)
    {
        alarm[6] = 50;
        repeat(3)
        {
            var tt = instance_create(x + random_range(-32, 32), y + random_range(32, 96), obj_skeletonBone);
            tt.crotch = true;
        }
    }
    }
}

if (place_free(x+hspeed,y+vspeed) == false){
  hspeed=0;
}




