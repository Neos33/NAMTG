obj_storyTrigger.x = player.x - 17;
obj_storyTrigger.y = player.y - 23;
obj_messageController.alarm[0] = 10;
//FMODInstanceSetPaused(global.currentBGM, true);
FMODInstanceSetPaused(global.curMusic, true);
sound_loop(sndQuake);
obj_specialControllerForSecret1.trigger = true;
event_inherited();

