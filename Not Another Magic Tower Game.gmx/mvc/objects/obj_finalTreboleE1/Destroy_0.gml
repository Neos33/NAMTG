dir = random(360);
for(var i=0;i<4;i+=1)
{
    var a;
    a=createDiaBullet(x,y,6,dir+90*i,spr_finalTrebole16,image_index,obj_finalTreboleB3);
    a=createDiaBullet(x,y,7,dir+90*i,spr_finalTrebole16,image_index,obj_finalTreboleB3);
    a=createDiaBullet(x,y,8,dir+90*i,spr_finalTrebole16,image_index,obj_finalTreboleB3);
    a=createDiaBullet(x,y,7,dir+25+90*i,spr_finalTrebole16,image_index+1,obj_finalTreboleB3);
    a=createDiaBullet(x,y,7,dir-25+90*i,spr_finalTrebole16,image_index+2,obj_finalTreboleB3);
}

