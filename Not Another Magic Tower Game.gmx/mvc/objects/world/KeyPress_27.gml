//�Q�[����I������
if pauseon{ 
     pauseon = false;
     instance_activate_all(); 
     background_delete(pauseback);    
     if fps!=0{
            global.timestep[global.savenum] += 2*room_speed/fps;
        }
}
else{
    if(global.inCombat)
       exit;
    if(room != rTitle && room != rInit)
    {
        //SS_StopSound(global.currentBGM);
        FMODInstanceStop(global.currentBGM);
        //SS_StopSound(SE_Death);
        sound_stop_all();
        saveDeathTime();
        file_delete("temp");
        with player instance_destroy();
        room_goto(rTitle);
    }
    else
    {
        file_delete("temp");
        game_end();
    }
}

