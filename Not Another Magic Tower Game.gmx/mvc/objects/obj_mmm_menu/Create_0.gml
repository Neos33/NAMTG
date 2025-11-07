alpha = 0;
step = 0;
medals = 0;

width = 0;
height = 0;

currentMeter = 0;
selectedIndex = 0;

medalEffect = 0;

dColor = 0;

FMODInstanceStop(scrAudioGetID("BGM_MMMFingers"));
step = 0;
alpha = 0;
width = 13;
height = 13;
image_speed = 0;
currentMeter = obj_mmm_gameController.currentMeter;
if(currentMeter < 250)
{
    dColor = c_black;
}
else if(currentMeter >= 250 && currentMeter < 500)
{
    dColor = c_black;
}
else if(currentMeter >= 500 && currentMeter < 750)
{
    dColor = c_black;
}
else if(currentMeter >= 575000 && currentMeter < 1000)
{
    dColor = c_black;
}
else if(currentMeter >= 1000)
{
    dColor = c_black;
    if(!global.achievements[61])
    {
        ch = instance_create(0,608,obj_achievements);
        ch.index = 61;
        global.achievements[61] = 1;
    }
}
alarm[0] = 1;
alarm[11] = 10;

