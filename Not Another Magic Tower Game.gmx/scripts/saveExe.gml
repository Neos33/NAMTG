//save�t�@�C����ǂݍ���Ŏ��s
//�Z�[�u�f�[�^�Ȃǂ͊�{�I�Ƀo�C�i���`���ŕۑ�����Ă��܂�
var f,roomTo;

if(global.inGallery)
{
    global.inGallery = false;
    global.attack = global.GalleryAtk;
    global.defense = global.GalleryDef;
    global.hp = global.GalleryHp;
}

global.expBonus = 0;
f = file_bin_open("save"+string(global.savenum),0);
roomTo = file_bin_read_byte(f)*10000;
roomTo += file_bin_read_byte(f)*100;
roomTo += file_bin_read_byte(f);
if(room != rMenu){
room_goto(roomTo);
 global.image_xscale=0;
if( !instance_exists(player) ) instance_create(0,0,player);
}
player.x = file_bin_read_byte(f)*10000;
player.x += file_bin_read_byte(f)*100;
player.x += file_bin_read_byte(f);
player.y = file_bin_read_byte(f)*10000;
player.y += file_bin_read_byte(f)*100;
player.y += file_bin_read_byte(f);

global.difficulty = file_bin_read_byte(f);
global.grav = file_bin_read_byte(f);
global.boss[1] = file_bin_read_byte(f);
global.boss[2] = file_bin_read_byte(f);
global.boss[3] = file_bin_read_byte(f);
global.boss[4] = file_bin_read_byte(f);
global.boss[5] = file_bin_read_byte(f);
global.boss[6] = file_bin_read_byte(f);
global.boss[7] = file_bin_read_byte(f);
global.boss[8] = file_bin_read_byte(f);
global.clear = file_bin_read_byte(f);
if(room = rMenu){
file_bin_close(f);
}else{
global.item[1] = file_bin_read_byte(f);
global.item[2] = file_bin_read_byte(f);
global.item[3] = file_bin_read_byte(f);
global.item[4] = file_bin_read_byte(f);
global.item[5] = file_bin_read_byte(f);
global.item[6] = file_bin_read_byte(f);
global.item[7] = file_bin_read_byte(f);
global.item[8] = file_bin_read_byte(f);
global.music = file_bin_read_byte(f);
//�����ŐV�����ϐ���ǉ��������Ƃ��͂��̉��ɋL�q���Ă�������

//player basic info
global.attack = file_bin_read_byte(f)*10000;
global.attack += file_bin_read_byte(f)*100;
global.attack += file_bin_read_byte(f);

global.defense = file_bin_read_byte(f)*10000;
global.defense += file_bin_read_byte(f)*100;
global.defense += file_bin_read_byte(f);    

global.hp = file_bin_read_byte(f)*10000;
global.hp += file_bin_read_byte(f)*100;
global.hp += file_bin_read_byte(f);

global.yellowKeyNum = file_bin_read_byte(f)*10000;
global.yellowKeyNum += file_bin_read_byte(f)*100;
global.yellowKeyNum += file_bin_read_byte(f);

global.blueKeyNum = file_bin_read_byte(f)*10000;
global.blueKeyNum += file_bin_read_byte(f)*100;
global.blueKeyNum += file_bin_read_byte(f);

global.redKeyNum = file_bin_read_byte(f)*10000;
global.redKeyNum += file_bin_read_byte(f)*100;
global.redKeyNum += file_bin_read_byte(f);

global.greenKeyNum = file_bin_read_byte(f)*10000;
global.greenKeyNum += file_bin_read_byte(f)*100;
global.greenKeyNum += file_bin_read_byte(f);

global.ironKeyNum = file_bin_read_byte(f)*10000;
global.ironKeyNum += file_bin_read_byte(f)*100;
global.ironKeyNum += file_bin_read_byte(f);

//Mosters
totalMonstersKill = 0;
for(i = 0; i < 300; i+=1)
{
    global.monsters[i] = file_bin_read_byte(f);
    if(global.monsters[i])
    {
        totalMonstersKill += 1;
    }
}

//Keys
totalKeysGet = 0;
for(i = 0; i < 125; i+=1)
{
    global.yellowKeys[i] = file_bin_read_byte(f);
    if(global.yellowKeys[i])
    {
        totalKeysGet += 1;
    }
}

for(i = 300; i < 330; i+=1)
{
    global.monsters[i] = file_bin_read_byte(f);
    if(global.monsters[i])
    {
        totalMonstersKill += 1;
    }
}
global.TotalKills = totalMonstersKill;

global.dynamiteTutorial = file_bin_read_byte(f);

global.dynamiteNum = file_bin_read_byte(f)*10000;
global.dynamiteNum += file_bin_read_byte(f)*100;
global.dynamiteNum += file_bin_read_byte(f);

global.dynamitePurchaseTimes = file_bin_read_byte(f)*10000;
global.dynamitePurchaseTimes += file_bin_read_byte(f)*100;
global.dynamitePurchaseTimes += file_bin_read_byte(f);

global.MaxChallengePoints = file_bin_read_byte(f)*10000;
global.MaxChallengePoints += file_bin_read_byte(f)*100;
global.MaxChallengePoints += file_bin_read_byte(f);


for(i = 0; i < 10; i+=1)
{
    global.challengeSets[i] = file_bin_read_byte(f);
}

for(i = 0; i < 25; i+=1)
{
    global.secretWalls[i] = file_bin_read_byte(f);
}

for(i = 0; i < 100; i+=1)
{
    global.blueKeys[i] = file_bin_read_byte(f);
    if(global.blueKeys[i])
    {
        totalKeysGet += 1;
    }
}

for(i = 0; i < 50; i+=1)
{
    global.redKeys[i] = file_bin_read_byte(f);
    if(global.redKeys[i])
    {
        totalKeysGet += 1;
    }
}
for(i = 0; i < 30; i+=1)
{
    global.greenKeys[i] = file_bin_read_byte(f);
    if(global.greenKeys[i])
    {
        totalKeysGet += 1;
    }
}

global.MagicCloak = file_bin_read_byte(f);
global.DynamiteX3 = file_bin_read_byte(f);
global.PowerAmplifier = file_bin_read_byte(f);
global.SaintShield = file_bin_read_byte(f);
global.SaintSword = file_bin_read_byte(f);

for(i = 0; i < 3; i+=1)
{
    global.CCItem[i] = file_bin_read_byte(f);
}

global.spaceTrigger = file_bin_read_byte(f);

for(i = 0; i < 11; i+=1)
{
    voidValue = file_bin_read_byte(f);
}

for(i = 0; i < 20; i+=1)
{
    global.ironKeys[i] = file_bin_read_byte(f);
    if(global.ironKeys[i])
    {
        totalKeysGet += 1;
    }
}

for(i = 0; i < 30; i+=1)
{
    global.lvBlocks[i] = file_bin_read_byte(f);
}
global.TotalKeysGet = totalKeysGet;

//Doors
totalKeysUsed = 0;
for(i = 0; i < 175; i+=1)
{
    global.yellowDoors[i] = file_bin_read_byte(f);
    if(global.yellowDoors[i])
    {
        totalKeysUsed += 1;
    }
}

for(i = 25; i < 50; i+=1)
{
    global.secretWalls[i] = file_bin_read_byte(f);
}

for(i = 0; i < 100; i+=1)
{
    global.blueDoors[i] = file_bin_read_byte(f);
    if(global.blueDoors[i])
    {
        totalKeysUsed += 1;
    }
}
for(i = 0; i < 50; i+=1)
{
    global.redDoors[i] = file_bin_read_byte(f);
    if(global.redDoors[i])
    {
        totalKeysUsed += 1;
    }
}
for(i = 0; i < 20; i+=1)
{
    global.greenDoors[i] = file_bin_read_byte(f);
    if(global.greenDoors[i])
    {
        totalKeysUsed += 1;
    }
}

for(i = 40; i < 50; i+=1)
{
    global.story[i] = file_bin_read_byte(f);
}

for(i = 10; i < 20; i+=1)
{
    global.specialBlock[i] = file_bin_read_byte(f);
}

global.randomMonstersKilled = file_bin_read_byte(f);

for(i = 31; i < 40; i+=1)
{
    global.story[i] = file_bin_read_byte(f);
}

for(i = 0; i < 20; i+=1)
{
    global.ironDoors[i] = file_bin_read_byte(f);
    if(global.ironDoors[i])
    {
        totalKeysUsed += 1;
    }
}
global.TotalKeysUsed = totalKeysUsed;

for(i = 0; i < 10; i+=1)
{
    global.upstairsWing[i] = file_bin_read_byte(f);
}

for(i = 0; i < 10; i+=1)
{
    global.downstairsWing[i] = file_bin_read_byte(f);
}

for(i = 0; i < 10; i+=1)
{
    global.centralWing[i] = file_bin_read_byte(f);
}


//PowerUps
for(i = 0; i < 200; i+=1)
{
    global.attUp[i] = file_bin_read_byte(f);
}
for(i = 0; i < 10; i+=1)
{
    global.challengeRewards[i] = file_bin_read_byte(f);
}

for(i = 0; i < 40; i+=1)
{
    voidValue = file_bin_read_byte(f);
}

for(i = 0; i < 200; i+=1)
{
    global.defUp[i] = file_bin_read_byte(f);
}
for(i = 0; i < 20; i+=1)
{
    global.SpaceItems[i] = file_bin_read_byte(f);
}
for(i = 0; i < 10; i+=1)
{
    global.gemPlaced[i] = file_bin_read_byte(f);
}
for(i = 0; i < 10; i+=1)
{
    global.specialTriggers[i] = file_bin_read_byte(f);
}
for(i = 0; i < 10; i+=1)
{
    global.specialBlock[i] = file_bin_read_byte(f);
}
for(i = 0; i < 250; i+=1)
{
    global.hpUp[i] = file_bin_read_byte(f);
}

//Weapons
for(i = 0; i < 10; i+=1)
{
    global.swords[i] = file_bin_read_byte(f);
}
for(i = 0; i < 10; i+=1)
{
    global.shields[i] = file_bin_read_byte(f);
}

//Special
for(i = 0; i < 20; i+=1)
{
    global.special[i] = file_bin_read_byte(f);
}

for(i = 10; i < 20; i+=1)
{
    global.clearDoors[i] = file_bin_read_byte(f);
}

for(i = 10; i < 20; i+=1)
{
    global.clearItem[i] = file_bin_read_byte(f);
}

for(i = 0; i < 10; i+=1)
{
    global.clearDoors[i] = file_bin_read_byte(f);
}

//story
for(i = 0; i < 31; i+=1)
{
    global.story[i] = file_bin_read_byte(f);
}

for(i = 0; i < 10; i+=1)
{
    global.clearItem[i] = file_bin_read_byte(f);
}

global.upstairsWingNum = file_bin_read_byte(f)*10000;
global.upstairsWingNum += file_bin_read_byte(f)*100;
global.upstairsWingNum += file_bin_read_byte(f);

global.downstairsWingNum = file_bin_read_byte(f)*10000;
global.downstairsWingNum += file_bin_read_byte(f)*100;
global.downstairsWingNum += file_bin_read_byte(f);

global.centralWingNum = file_bin_read_byte(f)*10000;
global.centralWingNum += file_bin_read_byte(f)*100;
global.centralWingNum += file_bin_read_byte(f);

global.playerExp = file_bin_read_byte(f)*10000;
global.playerExp += file_bin_read_byte(f)*100;
global.playerExp += file_bin_read_byte(f);

global.levelExp = file_bin_read_byte(f)*10000;
global.levelExp += file_bin_read_byte(f)*100;
global.levelExp += file_bin_read_byte(f);

global.currentLevel = file_bin_read_byte(f)*10000;
global.currentLevel += file_bin_read_byte(f)*100;
global.currentLevel += file_bin_read_byte(f);

global.currentFloor = file_bin_read_byte(f)*10000;
global.currentFloor += file_bin_read_byte(f)*100;
global.currentFloor += file_bin_read_byte(f);
if(global.currentFloor > 50)
{
    global.currentFloor -= 100;
}

global.maxFloor = file_bin_read_byte(f)*10000;
global.maxFloor += file_bin_read_byte(f)*100;
global.maxFloor += file_bin_read_byte(f);

if(global.maxFloor > 50)
{
    global.maxFloor -= 100;
}

global.minFloor = file_bin_read_byte(f)*10000;
global.minFloor += file_bin_read_byte(f)*100;
global.minFloor += file_bin_read_byte(f);
if(global.minFloor > 50)
{
    global.minFloor -= 100;
}

global.isCheated = file_bin_read_byte(f)*10000;
global.isCheated += file_bin_read_byte(f)*100;
global.isCheated += file_bin_read_byte(f);

global.isPreviousCheated = global.isCheated;

file_bin_close(f);
loadExtra();
global.reverse = 0;
}

for(i = 1; i <= 300; i+=1)
{
    global.trigger[i] = 0;
}
global.JKMapView = false;
global.shotEnergy = 1;
global.BESkipped = false;
global.GESkipped = false;
global.GalleryBossFight = false;
global.GalleryBossFightNum = 0;
global.GalleryBossFightInd = 0;
global.BR_Points = 0;
global.BR_Status = 0;
global.TrueEndEscape = false;
