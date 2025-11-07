recoveryCountDown = 0;
if(global.GalleryBossFight)
{
    recoveryCountDown = 100;
}
else
{
    recoveryCountDown = 10;
}

global.cooldown = false;
/*if(!SS_IsSoundPaused(global.currentBGM))
{
    SS_PauseSound(global.currentBGM);
}
sound_stop_all();
battleBGM = choose(sndBattle5, sndBattle6, sndBattle7, sndBattle8);
sound_loop(battleBGM);*/

if(global.GalleryBossFight)
{
    global.playerHP = global.GalleryBossFightHp;
}
else
{
    global.playerHP = global.hp;
}
alarm[10] = 1;

enemyCount = 4;
battleEnd = false;
usedHp = 0;

alarm[1] = 150;

shift = 64;
margin = 64;
px[0] = margin;
px[1] = 800 - margin - shift * 2;
px[2] = 800 - margin - shift * 2;
px[3] = margin;

py[0] = 32 + margin;
py[1] = 32 + margin;
py[2] = 608 - 32 - margin - shift * 2;
py[3] = 608 - 32 - margin - shift * 2;
type = 0;
/*for(i = 0; i < 4; i += 1)
{
    execute_string("npc = instance_create(px[i], py[i], obj_npcBattleNPC" + string(i + 1) + ");npc.ind = i;");
}*/

for(var i = 100; i <= 800; i += 128)
{
    instance_create(i, 288, obj_4b6Platform);
}
alarm[5] = irandom_range(48, 96);
alarm[6] = 100;
perHp = 800/15;

/* */
/*  */
