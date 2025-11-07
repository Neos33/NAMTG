if(global.godmod)
{
    exit;
}
if(room != rSelectStage){
    //�v���C���[�����񂾎��̃C�x���g
    
    ////���y��炵�Ă���Object��폜
    /*if(instance_exists(playMusic)){
      with(playMusic){
        instance_destroy();
      }
    }*/
    
    ////���ݖ��Ă���Sound��S�Ē�~���A���S�pBGM��Đ�
    
    //instance_create(0,0,objDeathSound);
    
    ////���𕬏o������ׂ�Object�𐶐�
    if(room == rFinalCorridor)
    {
        instance_create(obj_draw_player.tx,y,bloodEmitter);
    }
    else
    {
        instance_create(x,y,bloodEmitter);
    }
    sound_fix(sndDeath);
    
    ////�v���C���[��Object��폜
    if(instance_exists(player))
    {
        with(player)
        {
            visible = false;
            image_alpha = 0;
            //instance_destroy();
        }
    }
    if(instance_exists(player2))
    {
        with(player2)
        {
            visible = false;
            image_alpha = 0;
            //instance_destroy();
        }
    }
    
    instance_destroy(bow);
    
    player_dead();
    //with(niseplayer){instance_destroy()}
    //with(niseplayer2){instance_destroy()}
    
    //�Q�[���I�[�o�[�̕����iObject�j�𐶐�
    instance_create(__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+300,GAMEOVER);
    
    //���S���Ǝ��Ԃ̕ۑ�
    global.death[global.savenum] += 1;
    saveDeathTime();

}
else
{
    room_goto(rSelectStage);
      with(player){
        instance_destroy();
      }
      with(player2){
        instance_destroy();
      }
}
