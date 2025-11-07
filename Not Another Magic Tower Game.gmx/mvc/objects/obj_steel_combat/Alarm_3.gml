
x=player.x
y=-48

if(attackflag=0)spda=4
if(attackflag=1)spda=5
if(attackflag=2)spda=6

path_start(pathdown,spda,0,0)
path_scale=1

flag=0

if(attackflag=0)alarm[4]=20
if(attackflag=1)alarm[4]=17
if(attackflag=2)alarm[4]=14

recoverFlag = false;
/*if(attackflag=3 && sahanma=0){
    x=400;
    y=400;
    ooo=1
    sahanma=1
}

/* */
/*  */
