//�ċN��
if(global.inCombat)
   exit;
//SS_StopSound(global.currentBGM);
FMODInstanceStop(global.currentBGM);
//SS_StopSound(SE_Death);
sound_stop_all();
saveDeathTime();
file_delete("temp");
with player instance_destroy();
with obj_seController instance_destroy();
room_goto(rTitle);

