guide = instance_create(x,y,obj_snakeGuide);
alarm[1] = 1;
alarm[0] = 5;
subCount = 3;
child = instance_create(x,y,obj_snakeChild);
child.depth = depth + 1;
child.index = subCount - 1;
dir = "init";
b = instance_create(x,y,block);


isX = 0;
isY = 0;

signX = 0;
signY = 0;

