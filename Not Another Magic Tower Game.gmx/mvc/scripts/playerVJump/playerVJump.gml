//�W�����v�L�[�𗣂����猸��

if(global.grav=0){
  if(global.reverse == 0)
  {
      if(vspeed < 0)
      {
          vspeed *= 0.45;
      }
  }
  else
  {
      if(vspeed > 0)
      {
         vspeed *= 0.45;
      }
  }
}
if(global.grav=1 && vspeed > 0){
  vspeed *= 0.45;
}

