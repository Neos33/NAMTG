var f,tem;
f = file_bin_open("extraSave",1);

//Bubble Stage
file_bin_write_byte(f,global.stageIndex);
file_bin_write_byte(f,global.currentBubbleStage);
for(i = 0; i < 10; i += 1)
{
 file_bin_write_byte(f,global.bubbleStageStar[i]);
}
//EchoShift
for(i = 0; i < 9; i += 1)
{
 file_bin_write_byte(f,global.ExtraJKPortalPressed[i]);
}

for(i = 0; i < 10; i += 1)
{
 file_bin_write_byte(f,global.ExtraJkBest[i]);
 file_bin_write_byte(f,global.ExtraJkStar[i]);
}

//Floor
for(i = 0; i < 6; i+= 1)
{
 file_bin_write_byte(f,global.floorTrigger[i]);
}

//MMMFingers
tem = global.mmmHighScore;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.mmmTotalTries;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

for(i = 0; i < 4; i += 1)
{
    tem = global.mmmMedals[i];
    file_bin_write_byte(f,floor(tem/10000));
    tem -= floor(tem/10000)*10000;
    file_bin_write_byte(f,floor(tem/100));
    tem -= floor(tem/100)*100;
    file_bin_write_byte(f,tem);
}
file_bin_write_byte(f,global.testAvailable);

//other
for(i = 0; i < 946; i += 1)
{
 file_bin_write_byte(f,0);
}

file_bin_close(f);
