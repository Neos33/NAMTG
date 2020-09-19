if(!file_exists("extraSave"))
{
 global.stageIndex  = 0;
 global.currentBubbleStage = 0;
 for(i = 0; i < 10; i += 1)
 {
     global.bubbleStageStar[i] = 0;
 }
 for(i = 0; i < 9; i += 1)
 {
     global.ExtraJKPortalPressed[i] = 0;
 }

 for(i = 0; i < 10; i += 1)
 {
     global.ExtraJkBest[i] = 0;
     global.ExtraJkStar[i] = 0;
 }
 exit;
}
var f;

f = file_bin_open("extraSave",0);
global.stageIndex = file_bin_read_byte(f);
global.currentBubbleStage = file_bin_read_byte(f);

for(i = 0; i < 10; i += 1)
{
 global.bubbleStageStar[i] = file_bin_read_byte(f);
}

for(i = 0; i < 9; i += 1)
{
 global.ExtraJKPortalPressed[i] = file_bin_read_byte(f);
}

for(i = 0; i < 10; i += 1)
{
 global.ExtraJkBest[i] = file_bin_read_byte(f);
 global.ExtraJkStar[i] = file_bin_read_byte(f);
}

for(i = 0; i < 6; i+= 1)
{
 global.floorTrigger[i] = file_bin_read_byte(f);
}

global.mmmHighScore = file_bin_read_byte(f)*10000;
global.mmmHighScore += file_bin_read_byte(f)*100;
global.mmmHighScore += file_bin_read_byte(f);

global.mmmTotalTries = file_bin_read_byte(f)*10000;
global.mmmTotalTries += file_bin_read_byte(f)*100;
global.mmmTotalTries += file_bin_read_byte(f);

for(i = 0; i < 4; i += 1)
{
    global.mmmMedals[i] = file_bin_read_byte(f)*10000;
    global.mmmMedals[i] += file_bin_read_byte(f)*100;
    global.mmmMedals[i] += file_bin_read_byte(f);
}

global.testAvailable = file_bin_read_byte(f);
file_bin_close(f);
