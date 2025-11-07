angle=point_direction(x,y,obj_playerTouhou.x,obj_playerTouhou.y);
for(var i=0;i<12;i+=1)
{
    var a=instance_create(x,y,obj_finalTreboleB3);
    a.sprite_index=spr_finalTreboleGray;
    a.speed=4;
    a.direction=angle+30*i;
}
alarm[3]=100;

