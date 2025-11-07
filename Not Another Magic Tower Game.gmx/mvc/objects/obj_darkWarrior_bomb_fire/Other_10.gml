var left = x - p * 32 - 16;
var right = x + p * 32 + 16;
var up = y - p * 32 - 16;
var down = y + p * 32 + 16;

if(collision_line(x,y,left+16,y,block,true,true) || collision_line(x,y,left+16,y,obj_dwBombWall,true,true))
{
    leftP = 0;
    for(var i = x - 48; i >= left; i -= 32)
    {   
        if(instance_position(i,y - 16,block))
        {
            leftBombWall = false;
            break; 
        }
        if(instance_position(i,y - 16,obj_dwBombWall))
        {
            leftBombWall = true;
            break; 
        }
        leftP += 1;
    }
}
else
{
    leftP = p;
}

if(collision_line(x,y,right-16,y,block,true,true) || collision_line(x,y,right-16,y,obj_dwBombWall,true,true))
{
    rightP = 0;
    for(i = x +16; i <= right - 32; i += 32)
    {   
        if(instance_position(i,y - 16,block))
        {
            rightBombWall = false;
            break; 
        }
        if(instance_position(i,y - 16,obj_dwBombWall))
        {
            rightBombWall = true;
            break; 
        }
        rightP += 1;
    }
}
else
{
    rightP = p;
}

if(collision_line(x,y,x, up + 16,block,true,true) || collision_line(x,y,x,up + 16,obj_dwBombWall,true,true))
{
    upP = 0;
    for(i = y - 48; i >= up; i -= 32)
    {   
        if(instance_position(x - 16,i,block))
        {
            upBombWall = false;
            break; 
        }
        if(instance_position(x - 16,i,obj_dwBombWall))
        {
            upBombWall = true;
            break; 
        }
        upP += 1;
    }
}
else
{
    upP = p;
}

if(collision_line(x,y,x,down-16,block,true,true) || collision_line(x,y,x,down-16,obj_dwBombWall,true,true))
{
    downP = 0;
    for(i = y +16; i <= down - 32; i += 32)
    {   
        if(instance_position(x - 16,i,block))
        {
            downBombWall = false;
            break; 
        }
        if(instance_position(x - 16,i,obj_dwBombWall))
        {
            downBombWall = true;
            break; 
        }
        downP += 1;
    }
}
else
{
    downP = p;
}

