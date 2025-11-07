var dealMsgInfo;
if(!is_message())
{
    instance_create(player.x,player.y,bloodEmitter);
    sound_fix(sndDeath);
    dealMsgInfo = instance_create(player.x, player.y, obj_dealMsgInfo);
    dealMsgInfo.msg = dealMsg;
    global.hp -= hpExchange;
    player.frozen = false;
    instance_destroy();
}
else
{
    alarm[7] = 1;
}

