event_inherited();
name = "Dark Warrior";
image_speed = 1/8;
x=752;
y=48;

bombCount = 1;
minBombCount = 1;

powerCount = 1;
minPowerCount = 1;

spd = 3;
minSpd = 3;

crossWall = false;

godtime = 0;

gridAll = mp_grid_create(192,0,18,18,32,32);
mp_grid_add_instances(gridAll, block, false);
mp_grid_add_instances(gridAll, obj_dwBombWall, false);
gridWall = mp_grid_create(192,0,18,18,32,32);
mp_grid_add_instances(gridWall, block, false);


// Vars
drawGrid = false;

pathCrossWall = false;
wallCrossChange = false;
toTarget = false;
crazy = false;
superCrazy = false;

toItem = false;

path = 0;
cellX = 0;
cellY = 0;


itemCount = 0;


if(instance_exists(obj_darkWarrior_item))
{
    event_user(1);
}
else
{
    event_user(0);
}

alarm[3] = 50;






