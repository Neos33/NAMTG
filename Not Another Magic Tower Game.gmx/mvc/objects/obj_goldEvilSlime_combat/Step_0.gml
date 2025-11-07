if(status == 0)
{
    if(hp <= 45)
    {
        status = 1;
    }
}
else if(status == 1)
{
    if(fade)
    {
        if(mixedAlpha < 1)
        {
            mixedAlpha += 0.05;
        }
        else
        {
            status = 2;
            mixedAlpha = 0;
            fade = false;
        }
    }
}
else if(status == 2)
{
    stepAlpha = (700 - evolveStep) / 5000;
    tempAlpha = mixedAlpha;
    if(evolve)
    {
        if(up)
        {
            
            mixedAlpha = RangeClamp(tempAlpha + stepAlpha, 0, 1);
            if(mixedAlpha == 1)
            {
                up = false;
            }
        }
        else
        {
            mixedAlpha = RangeClamp(tempAlpha - stepAlpha, 0, 1);
            if(mixedAlpha == 0)
            {
                up = true;
            }
        }
    }
    else
    {
        if(mixedAlpha < 1)
        {
            mixedAlpha = RangeClamp(tempAlpha + stepAlpha, 0, 1);
        }
        else
        {
            status = 3;
        }
    }
}
else if(status == 3)
{
    if(mixedAlpha > 0)
    {
        if(!playEnd)
        {
            sound_play(sndEvolveEnd);
            playEnd = true;
        }
        mixedAlpha -= 0.05;
    }
    else
    {
        obj_pokemonEnemyInfo.spIndex = 8;
        obj_goldEvilSlimeWhite.alarm[0] = 1;
        missingNo = instance_create(x,y,obj_missingno);
        missingNo.hp = hp;
        //global.combatObj = obj_missingno;
        //sound_stop(sndEvolve);
        if music_evolving != noone
        {
            FMODInstanceStop(music_evolving);
            music_evolving = noone;
        }
            
        with(obj_pokemonBattleDialog)
        {
            msg = "Holy shit! " + other.name + " has evolved into MissingNo.";
            event_user(0);
        }
        //sound_loop(sndPokemonBattle);
        //obj_combatController.battleBGM = sndPokemonBattle;
        music_play_battle("BGM_Battle2PokemonC");
        obj_combatController.battleMusic = "BGM_Battle2PokemonC";
        player.frozen = false;
        instance_destroy();
    }
}

if(evolve)
{
    if(keyboard_check_pressed(global.skipbutton))
    {
        if(evolveStep > 250)
        {
            with(obj_pokemonBattleDialog)
            {
                msg = other.name + " is evolving!";
                event_user(0);
            }
        }
        if(instance_exists(obj_skipInfo))
        {
            with(obj_skipInfo)
            {
                instance_destroy();
            }
        }
        evolve = false;
        status = 3;
        exit;
    }

    if(evolveStep > 0)
    {
        evolveStep -= 1;
        if(evolveStep = 250)
        {
            with(obj_pokemonBattleDialog)
            {
                msg = other.name + " is evolving!";
                event_user(0);
            }
        }
    }
    else
    {
        evolve = false;
    }
}

