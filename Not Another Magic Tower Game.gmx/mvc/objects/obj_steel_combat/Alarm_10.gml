/*if(ggggg2=2){
path_start(pathup,5,0,0)
path_scale=4.5
unchi2=1
}

if(ggggg2=0){
path_start(pathup,5,0,0)
path_scale=4.5
unchi=1
alarm[0]=50
} */

if(!place_meeting(x,y,block))
{
    alarm[10] = 1;
}
else
{
    hspeed = 0;
    vspeed = 0;
    gravity = 0;
    instance_create(x,y,view_shaker1);
    alarm[11] = 125;
}


/* */
/*  */
