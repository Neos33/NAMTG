if(triggered) exit;
triggered = true;
audio_playsound(snditem);
global.challengeRewards[ind] = true;

if(ammount > 0)
{
    txt = instance_create(x + 16, y, obj_ammountText);
    txt.ammount = ammount;
}

if(type == 0)
{
    global.hp += ammount;
    instance_destroy();
}
else if(type == 1)
{
    message_add("You've got the Magic Cloak. The Magic Cloak block damages for you in each battle before you losing hp. The block amount equals to the total monsters number that you killed.");
    global.MagicCloak = true;
    global.special[14] = true;
    achInd = 100;
    alarm[0] = 1;
}
else if(type == 2)
{
    message_add("You've got the Energy Stone. The Energy Stone can amplify the effect of magic ring and speed up the time required for a full charged shot.");
    global.PowerAmplifier = true;
    global.CCItem[1] = true;
    global.special[15] = true;
    achInd = 102;
    alarm[0] = 1;
}
else if(type == 3)
{
    global.hp += ammount;
    if(!global.achievements[101])
    {
        if(!instance_exists(obj_achievements))
        {
            ch = instance_create(0,608,obj_achievements);
            ch.index = 101;
            global.achievements[101] = 1;
        }
    }
    instance_destroy();
}
else if(type == 4)
{
    global.DynamiteX3 = true;
    global.CCItem[0] = true;
    global.dynamiteNum += ammount;
    instance_destroy();
}
else if(type == 5)
{
    if(!global.achievements[104])
    {
        if(!instance_exists(obj_achievements))
        {
            ch = instance_create(0,608,obj_achievements);
            ch.index = 104;
            global.achievements[104] = 1;
        }
    }
    message_add("You've got the Saint Shield. The saint shield will reduce the damage you received by 50 percentage.");
    global.SaintShield = true;
    global.CCItem[2] = true;
    global.special[17] = true;
    achInd = 104;
    alarm[0] = 1;
}


