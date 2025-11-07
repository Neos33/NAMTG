d3d_start();
cSpd = 1;
cStart = 0;
bAngle = 0;
bSpd = 1;

//alarm[4] = 5;

steps = 0;
yOffset = 0;

rWidth = 576;
rHeight = 608;
rSprWidth = 16;
rDepth = 40;

instance_create(x,y,obj_3dFloorDrawer);
instance_create(x,y,obj_3dCeilDrawer);
instance_create(x,y,obj_3dCubeDrawer);
instance_create(rWidth/2,480,obj_3dKidGay);
instance_create(rWidth/2+80,330,obj_3dRedGay);
instance_create(rWidth/2-80,330,obj_3dBlueGay);

dLine[0] = 520;
dLine[1] = 500;
dLine[2] = 350;
dLine[3] = 250;
dLine[4] = 150;
dLine[5] = 100;

xLine[0] = rWidth/2 - 32;
xLine[1] = rWidth/2 + 40;
xLine[2] = rWidth/2 + 48;
xLine[3] = rWidth/2 - 64;
xLine[4] = rWidth/2 + 160;
xLine[5] = rWidth/2 - 192;

hLine[0] = 0;
hLine[1] = 12;
hLine[2] = -15;
hLine[3] = -20;
hLine[4] = -26;
hLine[5] = -24;

for(i = 0; i <= 5; i += 1)
{
    star = instance_create(xLine[i],dLine[i],obj_3dJumpingStar);
    with(star)
    {
        myDepth = other.dLine[other.i];
        myRotateX = other.xLine[other.i];
        myRotateY = other.hLine[other.i];
        scale = 0.15 - other.i * 0.01;
        image_xscale = scale;
        image_yscale = scale;
        baseY = myRotateY;
        event_user(0);
    }
}


instance_create(x,y,obj_3dLightController);
alarm[3] = 1;

cInterval = 74;
alarm[0] = cInterval;

cType[0] = 0;
cType[1] = 1;
cType[2] = 0;
cType[3] = 1;
cType[4] = 4;
cType[5] = 2;
cType[6] = 0;
cType[7] = 3;


