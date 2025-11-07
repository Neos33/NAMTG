//�f�o�b�O�p�i���S���ƌo�ߎ��Ԃ̕`��j
var _caption = global.room_caption_def + " Death["+string(global.savenum)+"]:"+string(global.death[global.savenum]);



global.time[global.savenum]=global.timestep[global.savenum] div (2*room_speed);
global.hour[global.savenum]=global.time[global.savenum] div 3600;
global.atime[global.savenum]=global.time[global.savenum] mod 3600;
global.muni[global.savenum]=global.atime[global.savenum] div 60;
global.sec[global.savenum]=global.atime[global.savenum] mod 60;
global.msec[global.savenum]=global.timestep[global.savenum]-global.time[global.savenum]*2*room_speed;
if round(global.msec[global.savenum])>=10 {
_caption += " FPS:" + string(fps) + " Time["+string(global.savenum)+"]:"+string(global.hour[global.savenum])+":"
+string(global.muni[global.savenum])+":"+string(global.sec[global.savenum])+"."+string(round(global.msec[global.savenum]));
}
else{
_caption += " FPS:" + string(fps) + " Time["+string(global.savenum)+"]:"+string(global.hour[global.savenum])+":"
+string(global.muni[global.savenum])+":"+string(global.sec[global.savenum])+".0"+string(round(global.msec[global.savenum]));
}

window_set_caption(_caption);

//pause

if(room != rInit && room != rMenu && room != rTitle && room != rSelectStage && room != rBadEnding && room != rTruth && !global.inCombat && !global.GalleryBossFight){
    if keyboard_check_pressed(global.pausebutton){
        if ( pauseon = false ){
            if player_is_alive() or instance_exists(player2){
                pauseon = true; 
                pauseback = background_create_from_surface(application_surface, 0,0,room_width,room_height,0,0); 
                instance_deactivate_all(1);   
                instance_activate_object(world);
            }
        }
        else{ 
            pauseon = false;
            instance_activate_all(); 
            background_delete(pauseback);  
            if fps!=0{
                if !global.clear
                global.timestep[global.savenum] += 2*room_speed/fps;
            }
        }
    }
}

//Time�̌v��
if abs(fps-50)>1{
    fpscount+=1;
}
else fpscount=0;

if(room != rInit && room != rMenu && room != rTitle && room != rSelectStage){
    if(pauseon = false and fps!=0 and !global.clear){
        if fpscount<100{
            global.timestep[global.savenum] += 2;
        }
        else{
            global.timestep[global.savenum] += 2*room_speed/fps;
        }
    }
}

//cleanmem
memory_count+=1;
if memory_count=10{
    cleanmem();
    memory_count=0;
}


if(room == r10F && global.skipable)
{
    if(keyboard_check_pressed(global.skipbutton))
    {
        if(instance_exists(obj_skipInfo))
        {
            with(obj_skipInfo)
            {
                instance_destroy();
            }
        }
        instance_activate_all();
        with(obj_beBattleTrigger)
        {
            for(i=0;i<=7;i+=1)
            {
                alarm[i]=0;
            }
            alarm[11] = 1;
        }
    }
}
if(room == rBadEnding && !global.BESkipped)
{
    if(keyboard_check_pressed(global.skipbutton))
    {
        if(instance_exists(obj_skipInfo))
        {
            with(obj_skipInfo)
            {
                instance_destroy();
            }
        }
        global.BESkipped = true;
        //transition_kind = 21;
        //transition_steps = 150;
        room_goto(rStatistics);
    }
}

if(room == rGayEnding || room == rGE3D || room == rGeCredit)
{
    if(keyboard_check_pressed(global.skipbutton))
    {
        if(!global.GESkipped)
        {
            global.GESkipped = true;
            //transition_kind = 21;
            //transition_steps = 50;
            global.koala = 25000;
            room_goto(rStatistics);
        }
    }
}

/// Godmod
if(global.godmod)
{
    if player_is_alive()
    {
        if(mouse_check_button_pressed(mb_right))
        {
            player.x = mouse_x;
            player.y = mouse_y;
        }
    }
}

if(global.special[7] && player_is_alive() && room != rFinalCorridor)
{
    if(keyboard_check_direct(global.shotbutton))
    {
        if(!player.frozen)
        {
            if(global.PowerAmplifier)
            {
                maxEnergy = HellBulletEnergy;
                stepEnergy = 0.03;
            }
            else
            {
                maxEnergy = MaxBulletEnergy;
                stepEnergy = 0.01;
            }
            if(global.shotEnergy < maxEnergy)
            {
                global.shotEnergy += stepEnergy;
                if(global.shotEnergy >= maxEnergy)
                {
                    global.shotEnergy = maxEnergy;
                    sound_stop(snd_touhou_powerup);
                    sound_fix(sndExpMax);
                }
            }
            if(global.shotEnergy >= 1.25)
            {
                if(!instance_exists(obj_gather))
                { 
                   instance_create(player.x + 11 * sign(player.image_xscale), player.y - 3, obj_gather);                     
                }
            }
        }
        else
        {
            if(instance_exists(obj_gather))
            {
                with(obj_gather)
                {
                    instance_destroy();
                }
                global.shotEnergy = 1;
            }
        }        
    }
}

/// Restart function
if(pauseon == 0)
{
    if(keyboard_check_pressed(global.restartbutton))
    {
        // Echo shift
        if(global.isJK && room != ExtraJKBonus && room != ExtraJKPortal)
        {
            if(!keyboard_check_direct(vk_control))
            {
                with(bloodEmitter)
                {
                    instance_destroy();
                }
                exit;
            }     
        }
        
        // sound function
        //SS_StopSound(SE_Death);
        sound_stop(sndDeath);
        if(instance_exists(obj_combatController))
        {
            with(obj_combatController)
            {
                if(battleBGM) sound_stop(battleBGM);
            }
            music_stop_battle();
        }
        global.inCombat = false;
        if instance_exists(objDeathSound){
            if !global.paused{
                //SS_SetSoundVol(curMusic,objDeathSound.start_vol);
                with objDeathSound instance_destroy();
            }
            else{
                //if !global.audio_music_muted{
                //    SS_SetSoundVol(curMusic,2000+80*global.audio_music_volume);
                //    SS_ResumeSound(curMusic);
                //}
                with objDeathSound instance_destroy();
            }
        }
        // restart function
        if(room != rInit && room != rMenu && room != rSelectStage && room != rTitle && room != rBadEnding && room != rTruth){
        //global.death[global.savenum]=0
        with(player){
            instance_destroy();
        }
        with(bow){
            instance_destroy();
        }
        with(obj_superFasf_combat)
        {
            instance_destroy();
        }
        with(obj_faShiLiu_combat)
        {
            instance_destroy();
        }
        with(obj_faro_combat)
        {
            instance_destroy();
        }
        with(obj_osuController)
        {
            instance_destroy();
        }
        with(obj_tlController)
        {
            instance_destroy();
        }
        with(obj_evilDragon_combat)
        {
            instance_destroy();
        }
        with(obj_seController)
        {
            instance_destroy();
        }
        with(obj_dynamiteInUse)
        {
            instance_destroy();
        }
        global.carryPrincess = false;
        with(obj_fatPrincess)
        {
            instance_destroy();
        }
        if(player_is_alive() or instance_exists(player2)){
            saveDeathTime();
            if fps!=0{
                    if !global.clear
                    global.timestep[global.savenum] += 2*room_speed/fps;
            }
        }
        //sound_stop_all();
        loadGame();
        loadAchievements();
        global.isRandom = false;
        ini_open(global.sfname);    // save file name, change this in the obj_options_init object;
        
        global.leftbutton = ini_read_real("Controls","Left",37);
        global.rightbutton = ini_read_real("Controls","Right",39);
        global.upbutton = ini_read_real("Controls","Up",38);
        global.downbutton = ini_read_real("Controls","Down",40);
        global.jumpbutton = ini_read_real("Controls","Jump",16);
        global.shotbutton = ini_read_real("Controls","Shoot",90);
        global.restartbutton = ini_read_real("Controls","Restart",82);
        global.pausebutton = ini_read_real("Controls","Pause",80);
        global.skipbutton = ini_read_real("Controls","Skip",83);
        global.menubutton = ini_read_real("Controls","Menu",88);
        
        ini_close();
        }
    }
}

if keyboard_check(vk_control)
{
    room_speed = 1000;
}
else
{
    room_speed = 50;
}

