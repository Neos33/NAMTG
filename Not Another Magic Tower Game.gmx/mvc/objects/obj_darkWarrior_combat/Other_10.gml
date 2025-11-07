targetX = 208;
targetY = 16;
while(instance_position(targetX - 16, targetY - 16, block) || instance_position(targetX - 16, targetY - 16, obj_dwBombWall) || (targetX == x && targetY == y))
{
    var txIndex = irandom_range(0,16);
    var tyIndex = irandom_range(0,16);
    targetX = 240 + 32 * txIndex;
    targetY = 48 + 32 * tyIndex;
}
event_user(2);
toTarget = true;   
toItem = false;
    

