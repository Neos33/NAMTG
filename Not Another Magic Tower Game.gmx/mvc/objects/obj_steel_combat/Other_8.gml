if(ttttt=0){
    if(ggggg2=1)
    {
        path_start(path_drum,6,0,0)
        ggggg2=2
        sound_fix(sndbrake)
        alarm[11]=40
    }
    if(ggggg=1)
    {
        path_start(path_drum,6,0,0)
        ggggg=2
        sound_fix(sndbrake)
        alarm[11]=40
    }
    if(unchi2=1)
    {
        image_index=0
        unchi2=2
    }
    if(unchi=1)
    {
        image_index=0
        unchi=2
    }

    if(flag=5)
    {
        image_index=0
        flag=0
        isBreak = false;
    }

    if(flag=3)
    {
        path_start(path_drum,6,0,0)
        flag=4
        audio_playsound(sndbrake)
        alarm[6]=40
    }

    if(flag=2)
    {
        ppp+=1
        
        if(attackflag=0){
            if(ppp<2)alarm[3]=10
            if(ppp>=2)alarm[5]=10
        }
        if(attackflag=1){
            if(ppp<4)alarm[3]=9
            if(ppp>=4)alarm[5]=9
        }
        if(attackflag=2){
            if(ppp<6)alarm[3]=6
            if(ppp>=6)alarm[5]=6
        }
        
        if(attackflag=3){
        alarm[3]=5
        }    
    }

    if(flag=1)
    {
        if(attackflag=0)spd=15
        if(attackflag=1)spd=17
        if(attackflag=2)spd=19

        path_start(pathup,spd,0,0)
        path_scale=9
        audio_playsound(sndbrake)
        flag=2
    }

}



