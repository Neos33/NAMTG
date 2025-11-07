with objBoss1Player
{
    image_xscale-=0.003;
    image_yscale-=0.003;
    image_angle-=8;
    image_alpha-=0.01;
    move_towards_point(objBoss1Warp.x,objBoss1Warp.y,point_distance(objBoss1Warp.x,objBoss1Warp.y,x,y)/50);
}
if !done
{
    audio_playsound(sndCherry);
    done=1;
}
alarm[2]=1;

