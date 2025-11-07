if(!global.story[12])
{
    global.story[12] = true;
    message_add("%wDownstairs Wing #Consumable. The magic wing can bring you downstairs immediately. You can config the key for using it in menu(defaul 'N').%");
}
global.downstairsWing[ind] = true;
global.downstairsWingNum += 1;
audio_playsound(snditem);
instance_destroy();

