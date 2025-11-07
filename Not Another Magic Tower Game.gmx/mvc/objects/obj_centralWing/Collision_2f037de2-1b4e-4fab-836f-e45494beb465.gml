if(!global.story[13])
{
    global.story[13] = true;
    message_add("%wCentral Symmetry Flying Wing #Consumable. The magic wing can teleport you to the place in current floor based on central symmetry. You can config the key for using it in menu(defaul 'V').%");
}
global.centralWing[ind] = true;
global.centralWingNum += 1;
audio_playsound(snditem);
instance_destroy();

