if(!global.story[11])
{
    global.story[11] = true;
    message_add("%wUpstairs Wing #Consumable. The magic wing can bring you upstairs immediately. You can config the key for using it in menu(defaul 'B').%");
}
global.upstairsWing[ind] = true;
global.upstairsWingNum += 1;
audio_playsound(snditem);
instance_destroy();

