dir = point_direction(x,y,player.x,player.y);
for(var i=0;i<4;i+=1)
{
    a=createDiaBullet(x,y,3,dir+90*i,spr_danmaku2,1,obj_diaDanmaku2);a.life=50;
    a=createDiaBullet(x,y,4,dir+90*i,spr_danmaku2,1,obj_diaDanmaku2);a.life=50;
    a=createDiaBullet(x,y,5,dir+90*i,spr_danmaku2,1,obj_diaDanmaku2);a.life=50;
    a=createDiaBullet(x,y,4,dir+25+90*i,spr_danmaku2,2,obj_diaDanmaku2);a.life=50;
    a=createDiaBullet(x,y,4,dir-25+90*i,spr_danmaku2,3,obj_diaDanmaku2);a.life=50;
}
alarm[5] = 44;

