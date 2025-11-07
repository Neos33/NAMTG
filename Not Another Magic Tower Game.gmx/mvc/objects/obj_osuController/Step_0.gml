if(!player_is_alive()) exit;
if(start)
{  
    if(!instance_exists(obj_osuHpAva))
    {
        instance_create(16+646,32+7,obj_osuHpAva);
    }
    if(mode == 0)
    {
        if((round(standard_time[ind]) - offset - time) <= (hitOffSet + 25))
        {
            if(ind < standardCount)
            {
                if(!ignore[ind])
                {
                    note = instance_create(standard_x[ind], standard_y[ind], obj_osuStandardElement);
                    note.ind = ind;
                }
                ind += 1;
            }
        }
        if(ind == standardCount && !instance_exists(obj_osuElement))
        {
            instance_create(0,0,obj_osuEndController);
            event_user(10);
        }
    }
    else if(mode == 1)
    {
        /*if(taikoNoteIndex < noteTaikoTotal)
        {
            while(taiko_time[taikoNoteIndex] <= time + 160)
            {
                element[taikoNoteIndex] = instance_create(obj_taikoBoard.x + (taiko_time[taikoNoteIndex] - 28 - time) * taikoSpd, obj_taikoBoard.y, obj_taikoElement);
                element[taikoNoteIndex].depth = -9999 + taikoNoteIndex;
                element[taikoNoteIndex].type = taiko_type[taikoNoteIndex];          
                taikoNoteIndex += 1;
            }
        }*/
        len = taikoSpd * 8;
        if(!taikoInit)
        {
            for(i = 0; i < noteTaikoTotal; i += 1)
            {
                element[i] = instance_create(obj_taikoBoard.x + (taiko_time[i] + 11 - time) * taikoSpd, obj_taikoBoard.y, obj_taikoElement);
                element[i].depth = -9999 + i;
                element[i].type = taiko_type[i];   
            }
            taikoInit = true;
        }
        
        /*if(currentTaikoIndex  < noteTaikoTotal)
        {
            dis = point_distance(element[currentTaikoIndex].x, element[currentTaikoIndex].y, obj_taikoBoard.x, obj_taikoBoard.y);
            if(element[currentTaikoIndex].x < obj_taikoBoard.x - len)
            {
                with(element[currentTaikoIndex])
                {
                    instance_destroy();
                }
                currentTaikoIndex  += 1;
            }
        }*/
    }
    else if(mode == 2)
    {
        if(!ctbInit)
        {
            for(i = 0; i < noteCTBTotal; i += 1)
            {
                element[i] = instance_create(ctb_x[i], ctbJudgeLine - (ctb_time[i] - time + 54) * ctbSpd - 6, obj_osuCTBElement);
                element[i].depth = -9999 + i; 
            }
            ctbInit = true;
        }
    }
    if(hp > 0)
    {
        hp -= stepDrain;
    }
    else
    {
        if(player_is_alive())
        {
            with(player)
            {
                killPlayer();
            }
            with(obj_taikoElement)
            {
                if(x > 800)
                {
                    instance_destroy();
                }
            }
            with(obj_osuCTBElement)
            {
                if(y < 0)
                {
                    instance_destroy();
                }
            }
            FMODInstanceStop(scrAudioGetID("BGM_Faro"));
            sound_fix(sndOsuFail);
            event_user(10);
        }
    }
}

switch(time)
{
    case 1200: //osuReady:
        //global.testStep1 = time;
        //global.testPos1 = SS_GetSoundPosition(global.BGM_Faro);
        sound_fix(sndOsuReady);
        instance_create(400,304,obj_osuReady);
        break;
    case 1250: //countdown3:
        cd = instance_create(0,0,obj_osuCountdown);
        cd.sprite_index = spr_osuCountdown3;
        sound_fix(snd_three);
        break;
    case 1290: //countdown2:
        cd = instance_create(800,0,obj_osuCountdown);
        cd.sprite_index = spr_osuCountdown2;
        sound_fix(snd_two);
        break;
    case 1320: //countdown1 - 10:
        room_goto(rFaroOsuStandard);
        break;
    case 1330: //countdown1:
        cd = instance_create(400,0,obj_osuCountdown);
        cd.sprite_index = spr_osuCountdown1;
        sound_fix(snd_one);
        break;
    case 1370: //countdown0:
        instance_create(400,304,obj_osuGo);
        sound_fix(snd_go);
        start = true;
        break;
    case 2620: //speedRun1: 
        //transition_kind = tType;
        //transition_steps = 50;
        time += 50;
        start = false;
        room_goto(rFaroBubble);
        break;
    case 3000: //faro1:
        srFaro = instance_create(-400,304,obj_speedRunFaro);
        srFaro.hspeed = 5;
        break;
    case 3220: //speedRun2:
        //transition_kind = tType;
        //transition_steps = 50;
        time += 50;
        room_goto(rFaroMMM);
        break;
    case 3600: //faro2:
        srFaro = instance_create(400,1000,obj_speedRunFaro);
        srFaro.vspeed = -4;
        srFaro.depth = -1001;
        break;
    case 3800: //speedRun2End:
        //transition_kind = tType;
        //transition_steps = 50;
        time += 50;
        room_goto(rFaroMidTime);
        alarm[5] = 5;
        break;
    case 3855: //midRound1_1:
    case 8125: //finalRound1_1:
        bCenterX = 400 + midRoundRadius * cos(degtorad(90));
        bCenterY = 304 - midRoundRadius * sin(degtorad(90));
        ball = instance_create(bCenterX * 2 - 400, bCenterY * 2 - 304, obj_faroMidTimeBall1);
        ball.centerX = bCenterX;
        ball.centerY = bCenterY;
        ball.angle = 90;
        ball.radius = midRoundRadius;
        break;
    case 3890: //midRound1_2:
    case 8160: //finalRound1_2:
        bCenterX = 400 + midRoundRadius * cos(degtorad(210));
        bCenterY = 304 - midRoundRadius * sin(degtorad(210));
        ball = instance_create(bCenterX * 2 - 400, bCenterY * 2 - 304, obj_faroMidTimeBall1);
        ball.centerX = bCenterX;
        ball.centerY = bCenterY;
        ball.angle = 210;
        ball.radius = midRoundRadius;
        break;
    case 3915: //midRound1_3:
    case 8195: //finalRound1_3:
        bCenterX = 400 + midRoundRadius * cos(degtorad(330));
        bCenterY = 304 - midRoundRadius * sin(degtorad(330));
        ball = instance_create(bCenterX * 2 - 400, bCenterY * 2 - 304, obj_faroMidTimeBall1);
        ball.centerX = bCenterX;
        ball.centerY = bCenterY;
        ball.angle = 330;
        ball.radius = midRoundRadius;
        break;
    case 3970: //midRountStart1:
    case 8250: //finalRountStart1:
        with(obj_faroMidTimeBall1)
        {
            event_user(0);
        }
        break;
    case 4140: //midRound2_1:
    case 8420: //finalRound2_1:
        instance_create(400, 304, obj_faroMidTimeBall2);
        break;
    case 4175: //midRound2_2:
    case 8445: //finalRound2_2:
        instance_create(200, 304, obj_faroMidTimeBall2);
        break;
    case 4200: //midRound2_3:
    case 8470: //finalRound2_3:
        instance_create(600, 304, obj_faroMidTimeBall2);
        break;
    case 4290: //midRountStart2:
        with(obj_faroMidTimeBall2)
        {
            event_user(0);
        }
        break;
        
    //case racing:
    //   instance_create(0,0,obj_faroMidTimeWhite);
    //    break;
    case 4400: //taikoTime:
        event_user(0);
        mode = 1;
        //transition_kind = tType;
        //transition_steps = 30;
        time += 30;
        room_goto(rFaroTaiko);
        break;
    case 5670: //speedRun3: 
        //transition_kind = tType;
        //transition_steps = 50;
        event_user(10);
        time += 50;
        room_goto(rFaroSideTower);
        break;
    case 6000: //faro3:
        srFaro = instance_create(1200,304,obj_speedRunFaro);
        srFaro.hspeed = -5;
        break;
    case 6250: //speedRun4: 
        //transition_kind = tType;
        //transition_steps = 50;
        time += 50;
        room_goto(rFaroJK);
        break;
     case 6700: //faro4: 
        srFaro = instance_create(400,-400,obj_speedRunFaro);
        srFaro.vspeed = 4.5;
        srFaro.depth = -1001;
        break;
     case 6850: //ctbTime:
        event_user(0);
        mode = 2;
        //transition_kind = tType;
        //transition_steps = 50;
        time += 50;
        room_goto(rFaroCTB);
        alarm[6] = 5;
        break;  
     case 8070: //ctbEnd: 
        //transition_kind = tType;
        //transition_steps = 50;
        event_user(10);
        time += 50;
        alarm[7] = 5;
        room_goto(rFaroFinal1);
        break; 
    case 8580: //finalRoundStart2:
        with(obj_faroMidTimeBall2)
        {
            event_user(1);
        }
        break;
    case 8725: //finalPart:
        finalController = instance_create(0,0,obj_faroPhase1Controller);
        finalController.mode = 1;
        break;
    case 9865: //final:
        fanalEnd = true;
        alarm[8] = 100;
        with(obj_faroMagicCircle)
        {
            event_user(1);
        }
        break;
    //case testTaiko:
    //    global.testStep5 = 4390;
    //    global.testPos5 = SS_GetSoundPosition(global.BGM_Faro);
    //    break;
    default: break;
}

time += 1;

/* */
/*  */
