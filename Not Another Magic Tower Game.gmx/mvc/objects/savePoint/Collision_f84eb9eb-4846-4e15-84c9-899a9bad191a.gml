//�Z�[�u���āA��莞�ԃZ�[�u�s�ɂ���
if(saveTimer < 0 && player_is_alive() == true){
  saveblock = false;
  if(instance_exists(obj_spaceController) && room != rSpacePortal && room != rFapple)
  {
      with(player)
      {
         if(!place_meeting(x,y,obj_spaceSafeRegion))
         {
            other.saveblock = true;
         }
      }
  }
  if(!saveblock)
  {
      saveTimer = 30;
      image_index = 1;
      image_speed = 0.017;
      AutoBackup();
      saveGame();
  }
  else
  {
      if(instance_exists(obj_spaceDangerousSaveHint))
      {
        with(obj_spaceDangerousSaveHint)
        {
            instance_destroy();
        }
      }
      if(instance_exists(obj_spaceDangerousSaveBlocker))
      {
        with(obj_spaceDangerousSaveBlocker)
        {
            instance_destroy();
        }
      }
      instance_create(x+14,y+20,obj_spaceDangerousSaveHint);
      instance_create(x+14,y+20,obj_spaceDangerousSaveBlocker);
      with(other)
      {
        instance_destroy();
      }
  }
}





