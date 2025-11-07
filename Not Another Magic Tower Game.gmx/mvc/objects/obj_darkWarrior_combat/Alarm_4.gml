var fixX = round((x - 16) / 32);
var fixY = round((y - 16) / 32);
var px = 32 * fixX + 16;
var py = 32 * fixY + 16;
if(superCrazy)
{
    for(var i = 0; i < 8; i += 1)
    {
          var b = instance_create(px,py,obj_dwFireBall);
          b.direction = i * 45;
    }
}
else
{
    for(var i = 0; i < 4; i += 1)
    {
          var b = instance_create(px,py,obj_dwFireBall);
          b.direction = i * 90;
    }
}
alarm[4] = 50;

