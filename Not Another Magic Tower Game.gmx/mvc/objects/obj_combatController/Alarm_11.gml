/// @description  Check if is initialized
if(initialized) exit;

///Music

battleBGM = noone;
battleMusic = noone;
// Super FASF
if(room == battlefasfroom || room == Roomavoidence)
{
    if(!instance_exists(obj_superFasf_combat) && room != Roomavoidence)
    {
        var m = instance_create(704, 544, global.combatObj);
            m.hp = global.mHP;
            m.atk = global.mAtk;
            m.def = global.mDef;
            m.ex = global.mEx;
    }
    else
    {
        obj_superFasf_combat.hspeed = 0;
        obj_superFasf_combat.vspeed = 0;
        obj_superFasf_combat.visible = 1;
        obj_superFasf_combat.x=400;
        obj_superFasf_combat.y=304;
        obj_superFasf_combat.image_blend = c_red;
        obj_superFasf_combat.image_speed = 1 / 6;
        obj_superFasf_combat.image_index = 0;
        
        if FMODInstanceGetPaused(global.current_battle_bgm)
        {
            FMODInstanceSetPaused(global.current_battle_bgm, false);
        }
    }
}
else
{
    var m = instance_create(704, 544, global.combatObj);
        m.hp = global.mHP;
        m.atk = global.mAtk;
        m.def = global.mDef;
        m.ex = global.mEx;
}
global.cooldown = false;

// Pause BGM
if(!FMODInstanceGetPaused(global.currentBGM))
{
    FMODInstanceSetPaused(global.currentBGM, true);
    //global.pausedBGM = global.currentBGM;
}

// 1st list of battle songs
if(global.mDef < 75)
{
    if(room == battleroom4 || room == battleroom6)
    {
        battleBGM = choose(sndBattle3, sndBattle4);
    }
    
    else
    {
        battleBGM = choose(sndBattle1, sndBattle2);
    }
}
// 2nd list of battle songs
else if(global.mDef <= 135)
{
    if(room == rSilverEvilSlime || room == rGoldEvilSlime)
    {
        //battleBGM = sndPokemonBattle1;
        battleMusic = "BGM_Battle2PokemonA"
    }
    else
    {
        //battleBGM = choose(sndBattle5, sndBattle6, sndBattle7, sndBattle8);
        battleMusic = choose("BGM_Battle2A", "BGM_Battle2B", "BGM_Battle2C", "BGM_Battle2D");
    }
}
// Last list of battle songs
else
{
    //battleBGM = sndBattle9;
    battleMusic = "BGM_Battle3";
}

var _room_exception = room != battlefasfroom && 
                        room != Roomavoidence && 
                        room != battleroom12 && 
                        room != rDracula && 
                        room != battleroom_bf && 
                        global.combatObj != obj_faro_combat && 
                        room != rDiamante && 
                        room != rPica && 
                        room != rDragonStart && 
                        room != rTrebole && 
                        room != rCorazone && 
                        room != rDemonLead && 
                        room != rTaisa

if(_room_exception && battleBGM != noone)
{
    sound_loop(battleBGM);
}


if(_room_exception && battleMusic != noone)
{
    music_play_battle(battleMusic);
}
else if(room == battlefasfroom)
{
    //music_play_battle("BGMsupfasf");
}
else if(room == battleroom12)
{
    music_play_battle("BGM_RedKey");
}
else if(room == rDracula)
{
    music_play_battle("BGMDracula");
}
else if(room == battleroom_bf)
{
    music_play_battle("BGM_BurningFasf");
}
else if(room == rDiamante)
{
    global.currentBGM = scrAudioGetID("BGM_Diamante");
}
else if(room == rPica)
{
    global.currentBGM = scrAudioGetID("BGM_Pica");
}
else if(room == rDragonStart)
{
    global.currentBGM = scrAudioGetID("BGM_Dragon");
}
else if(room == rTrebole)
{
    global.currentBGM = scrAudioGetID("BGM_Trebole");
}
else if(room == rCorazone)
{
    global.currentBGM = scrAudioGetID("BGM_Corazone");
}
else if(room == rTaisa)
{
    global.currentBGM = scrAudioGetID("BGM_Fapple");
}


global.playerHP = global.hp;
global.combatTime = 0;

