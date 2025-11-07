var __b__;
__b__ = action_if(global.player_alive);
if !__b__
{
{
exit;
}
}
//��ʂ̊O�ɏo���Ƃ��̔���
//if !instance_exists(player)
  //  exit;
var changeRoom,roomTo;

if(room == rBegining || room == battleroomBE || room == rNPCBattle || room == rDracula || room == rRedKnight || room == rSilverEvilSlime || room == rGoldEvilSlime || room == rBurningKnight || room == rEvilBlackMagician || (room == rFaroBubble && obj_faroBubbleWarp.triggered) || room == rFaroMMM || room == rEvilDragon || room == r5F
|| room == r_tl_redKnight || room == r_tl_silverEvilSlime || room == r_tl_goldEvilSlime || room == r_tl_burningKnight)
{
    exit;
}
if(room == rFinalCorridor)
{
    move_wrap(true,true,1);
    exit;
}

if(room == rDemonLeadOrininal)
{
    if(y < 608)
    {
        exit;
    }
}
//���[���̊O�ɋ��邩�ǂ����̃`�F�b�N
changeRoom = outsideRoom();


if(changeRoom == true)
{
    //�߂���roomChanger���L��΁A����roomTo�̃��[���Ɉړ��B������Ύ��S
    //if instance_exists(roomChanger)
    {
        var _room_target = instance_position(x,y,roomChanger);
        var _secure_roomTo = noone;
        if _room_target != noone
        {
            _secure_roomTo = _room_target.roomTo
        }
        //roomTo = instance_position(x,y,roomChanger).roomTo;  
        if(place_meeting(x,y,roomChanger) == false)
        {
            killPlayer();
        }
        else
        {
            if _secure_roomTo != noone
                room_goto(_secure_roomTo);
        }
    }
}  
  //���W���킹�i���[���̃T�C�Y�������łȂ��Ƌ������ςɂȂ�܂��j
  if(x < 0){
    x = room_width-16;
    y -= vspeed;
    changeRoom = true;
  }
  else if(x > room_width){
    x = 16;
    y -= vspeed;
    changeRoom = true;
  }
  else if(y < 0){
    y = room_height-16;
    x = xprevious;
    changeRoom = true;
  }
  else if(y > room_height){
    y = 16;
    x = xprevious;
    changeRoom = true;
  }
  


