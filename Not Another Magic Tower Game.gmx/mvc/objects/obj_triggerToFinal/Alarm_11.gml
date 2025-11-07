global.story[33] = true;
player.frozen = true;
with(obj_16FControlledNPC1)
{
    image_blend = c_black;
    image_alpha = 1;
}
open = true;
for(var i=0;i<4;i+=1)
{
    if(!global.gemPlaced[i])
    {
        open = false;
    }
}

if(open)
{
    blendColor = 0;
    global.story[34] = true;
    obj_ultimateEnergyContainer_red.alarm[1] = 25;
    obj_ultimateEnergyContainer_green.alarm[1] = 50;
    obj_ultimateEnergyContainer_blue.alarm[1] = 75;
    obj_ultimateEnergyContainer_yellow.alarm[1] = 100;
    alarm[6] = 175;
    alarm[7] = 175;
    message_add("Gay Bro, Fairy, Thief : Errrrrrrrrrr....");
}
else
{
    message_add("Gay Bro, Fairy, Thief : Errrrrrrrrrr....");
    message_add("Kid : Damn it. They are controlled...I failed to save them! FUCK!!!");
    obj_16FControlledNPC1.alarm[1] = 25;
    obj_16FControlledNPC2.alarm[1] = 50;
    obj_16FControlledNPC3.alarm[1] = 75;
    obj_16FControlledNPC4.alarm[1] = 100;
    alarm[10] = 125;
}

