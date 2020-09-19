//�v���C���[�̍U���i�ő�S�j

/*if(keyboard_check_direct(global.upbutton))
{
    if(instance_exists(player) && !global.trackInCoolDown)
    {
        instance_create(player.x, player.y - 16, obj_trackInfo);
    }
}*/
if(instance_number(bullet)<4){
   
  if(instance_exists(obj_gather))
  {
      theBullet = instance_create(x,y - 2,bullet); 
      theBullet.energy = global.shotEnergy;
      theBullet.sprite_index = spr_kidEnergyBall;
      if(global.PowerAmplifier)
      {
        theBullet.image_xscale = global.shotEnergy / 13 * sign(player.image_xscale);
        theBullet.image_yscale = global.shotEnergy / 13;
      }
      else
      {
        theBullet.image_xscale = global.shotEnergy / 10 * sign(player.image_xscale);
        theBullet.image_yscale = global.shotEnergy / 10;
      }
      with(obj_gather)
      {
        instance_destroy();
      }
      audio_playsound(sndShoot);
  }
  else
  {
      theBullet = instance_create(x,y,bullet); 
      audio_playsound(sndShoot);
  }
  global.shotEnergy = 1;
}
