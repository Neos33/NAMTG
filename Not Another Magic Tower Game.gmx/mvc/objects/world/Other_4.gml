with (other) {
if(instance_exists(player))
{
 player.visible = true;
}
//���[���̂P�b�Ԃ̃X�e�b�v����ݒ�
room_speed=50;
//���[���L���v�V�����̐ݒ�i��ɏo�Ă镶���ˁj
room_caption="Not Another Magic Tower Game";
global.difficulty = 0;
if(global.lite=0){
if(room != rInit && room != rMenu && room != rSelectStage && room != rTitle){
  if(global.difficulty == 0){
    room_caption += " Medium";
  }else if(global.difficulty == 1){
    room_caption += " Hard";
  }else if(global.difficulty == 2){
    room_caption += " VeryHard";
  }else if(global.difficulty == 3){
    room_caption += " Impossible";
  }
}
if(room != rInit && room != rMenu && room != rTitle){
  room_caption += "  Save"+string(global.savenum);
}
}
global.room_caption_def = room_caption;

//if(global.music=1) { sound_stop_all() }



}
with(world)
{
    event_user(0);
}
alarm[0] = 1;

/*if(room == rFinalCorridor)
{
    if(!instance_exists(obj_finalTowerParticle))
    {
        instance_create(0,0,obj_finalTowerParticle);
    }
}
else
{
    with(obj_finalTowerParticle)
    {
        instance_destroy();
    }
}

/* */
/*  */
