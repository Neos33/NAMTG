//�Q�[����Z�[�u
//�Z�[�u�f�[�^�Ȃǂ͊�{�I�Ƀo�C�i���`���ŕۑ�����Ă��܂�
tempCurrent = 0;
tempMin = 0;
tempMax = 0;
var f,tem;
f = file_bin_open("save"+string(global.savenum),1);
tem = room;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);
if(global.grav=0){
tem = player.xprevious;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);
tem = player.yprevious;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
}
if(global.grav=1){
tem = player2.xprevious;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);
tem = player2.yprevious;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
}
file_bin_write_byte(f,tem);
file_bin_write_byte(f,global.difficulty);
file_bin_write_byte(f,global.grav);
file_bin_write_byte(f,global.boss[1]);
file_bin_write_byte(f,global.boss[2]);
file_bin_write_byte(f,global.boss[3]);
file_bin_write_byte(f,global.boss[4]);
file_bin_write_byte(f,global.boss[5]);
file_bin_write_byte(f,global.boss[6]);
file_bin_write_byte(f,global.boss[7]);
file_bin_write_byte(f,global.boss[8]);
file_bin_write_byte(f,global.clear);
file_bin_write_byte(f,global.item[1]);
file_bin_write_byte(f,global.item[2]);
file_bin_write_byte(f,global.item[3]);
file_bin_write_byte(f,global.item[4]);
file_bin_write_byte(f,global.item[5]);
file_bin_write_byte(f,global.item[6]);
file_bin_write_byte(f,global.item[7]);
file_bin_write_byte(f,global.item[8]);
file_bin_write_byte(f,global.music);
//�����ŐV�����ϐ���ǉ��������Ƃ��͂��̉��ɋL�q���Ă�������


if(global.expBonus != 0)
{
    global.playerExp += global.expBonus;
    if((global.levelExp + global.expBonus) >= global.levelRequired[global.currentLevel])
    {
        
        global.levelExp += global.expBonus - global.levelRequired[global.currentLevel];
        global.currentLevel += 1;
        with(obj_basicInfoDrawer)
        {
            if(h_bns[global.currentLevel] > 0)
            {
                ef = instance_create(132, 128 + 8 + 48 * 1, obj_lvupEffect);
                ef.num = h_bns[global.currentLevel];
            }
            if(a_bns[global.currentLevel] > 0)
            {
                ef = instance_create(132, 128 + 8 + 48 * 2, obj_lvupEffect);
                ef.num = a_bns[global.currentLevel];
            }
            if(d_bns[global.currentLevel] > 0)
            {
                ef = instance_create(132, 128 + 8 + 48 * 3, obj_lvupEffect);
                ef.num = d_bns[global.currentLevel];
            }
            if(k1_bns[global.currentLevel] > 0)
            {
                ef = instance_create(132, 128 + 8 + 48 * 4, obj_lvupEffect);
                ef.num = k1_bns[global.currentLevel];
            }
            if(k2_bns[global.currentLevel] > 0)
            {
                ef = instance_create(132, 128 + 8 + 48 * 5, obj_lvupEffect);
                ef.num = k2_bns[global.currentLevel];
            }
            if(k3_bns[global.currentLevel] > 0)
            {
                ef = instance_create(132, 128 + 8 + 48 * 6, obj_lvupEffect);
                ef.num = k3_bns[global.currentLevel];
            }
            if(k4_bns[global.currentLevel] > 0)
            {
                ef = instance_create(132, 128 + 8 + 48 * 7, obj_lvupEffect);
                ef.num = k4_bns[global.currentLevel];
            }
            if(k5_bns[global.currentLevel] > 0)
            {
                ef = instance_create(132, 128 + 8 + 48 * 8, obj_lvupEffect);
                ef.num = k5_bns[global.currentLevel];
            }
            levelupBonus(a_bns[global.currentLevel], d_bns[global.currentLevel], h_bns[global.currentLevel], k1_bns[global.currentLevel], k2_bns[global.currentLevel], k3_bns[global.currentLevel], k4_bns[global.currentLevel], k5_bns[global.currentLevel]); 
            alarm[1] = 0;
        }
    }
    else
    {
        global.levelExp += global.expBonus;
    }
    global.expBonus = 0;
    obj_basicInfoDrawer.alarm[2] = 1;
}

//player basic info
tem = global.attack;
if(global.inGallery)
{
   tem = global.GalleryAtk;
}
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.defense;
if(global.inGallery)
{
    tem = global.GalleryDef;
}
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.hp;
if(tem <= 0)
{
    tem = global.combatHp;
}
if(global.inGallery)
{
    tem = global.GalleryHp;
}
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.yellowKeyNum;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.blueKeyNum;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.redKeyNum;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.greenKeyNum;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.ironKeyNum;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

//Mosters
for(i = 0; i < 300; i+=1)
{
    tem = global.monsters[i];
    file_bin_write_byte(f, tem);
}

//Keys
for(i = 0; i < 125; i+=1)
{
    file_bin_write_byte(f, global.yellowKeys[i]);
}

for(i = 300; i < 330; i+=1)
{
    tem = global.monsters[i];
    file_bin_write_byte(f, tem);
}

file_bin_write_byte(f, global.dynamiteTutorial);

tem = global.dynamiteNum;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.dynamitePurchaseTimes;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.MaxChallengePoints;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

for(i=0; i < 10; i+=1)
{
    file_bin_write_byte(f, global.challengeSets[i]);
}

for(i = 0; i < 25; i+=1)
{
    file_bin_write_byte(f, global.secretWalls[i]);
}

for(i = 0; i < 100; i+=1)
{
    file_bin_write_byte(f, global.blueKeys[i]);
}

for(i = 0; i < 50; i+=1)
{
    file_bin_write_byte(f, global.redKeys[i]);
}
for(i = 0; i < 30; i+=1)
{
    file_bin_write_byte(f, global.greenKeys[i]);
}

file_bin_write_byte(f, global.MagicCloak);
file_bin_write_byte(f, global.DynamiteX3);
file_bin_write_byte(f, global.PowerAmplifier);
file_bin_write_byte(f, global.SaintShield);
file_bin_write_byte(f, global.SaintSword);

for(i = 0; i < 3; i+=1)
{
    file_bin_write_byte(f, global.CCItem[i]);
}

file_bin_write_byte(f, global.spaceTrigger);
for(i = 0; i < 11; i+=1)
{
    file_bin_write_byte(f, 0);
}

for(i = 0; i < 20; i+=1)
{
    file_bin_write_byte(f, global.ironKeys[i]);
}

for(i = 0; i < 30; i+=1)
{
    file_bin_write_byte(f, global.lvBlocks[i]);
}

//Doors
for(i = 0; i < 175; i+=1)
{
    file_bin_write_byte(f, global.yellowDoors[i]);
}
for(i = 25; i < 50; i+=1)
{

    file_bin_write_byte(f, global.secretWalls[i]);
}

for(i = 0; i < 100; i+=1)
{
    file_bin_write_byte(f, global.blueDoors[i]);
}
for(i = 0; i < 50; i+=1)
{
    file_bin_write_byte(f, global.redDoors[i]);
}
for(i = 0; i < 20; i+=1)
{
    file_bin_write_byte(f, global.greenDoors[i]);
}

for(i = 40; i < 50; i+=1)
{
    file_bin_write_byte(f, global.story[i]);
}

for(i = 10; i < 20; i+=1)
{
    file_bin_write_byte(f, global.specialBlock[i]);
}

file_bin_write_byte(f, global.randomMonstersKilled);

for(i = 31; i < 40; i+=1)
{
    file_bin_write_byte(f, global.story[i]);
}

for(i = 0; i < 20; i+=1)
{
    file_bin_write_byte(f, global.ironDoors[i]);
}

for(i = 0; i < 10; i+=1)
{
    file_bin_write_byte(f, global.upstairsWing[i]);
}

for(i = 0; i < 10; i+=1)
{
    file_bin_write_byte(f, global.downstairsWing[i]);
}

for(i = 0; i < 10; i+=1)
{
    file_bin_write_byte(f, global.centralWing[i]);
}

//PowerUps
for(i = 0; i < 200; i+=1)
{
    file_bin_write_byte(f, global.attUp[i]);
}

for(i = 0; i < 10; i+=1)
{
    file_bin_write_byte(f, global.challengeRewards[i]);
}

for(i = 0; i < 40; i+=1)
{
    file_bin_write_byte(f, 0);
}

for(i = 0; i < 200; i+=1)
{
    file_bin_write_byte(f, global.defUp[i]);
}

for(i = 0; i < 20; i+=1)
{
    file_bin_write_byte(f, global.SpaceItems[i]);
}

for(i = 0; i < 10; i+=1)
{
    file_bin_write_byte(f, global.gemPlaced[i]);
}
for(i = 0; i < 10; i+=1)
{
    file_bin_write_byte(f, global.specialTriggers[i]);
}
for(i = 0; i < 10; i+=1)
{
    file_bin_write_byte(f, global.specialBlock[i]);
}
for(i = 0; i < 250; i+=1)
{
    file_bin_write_byte(f, global.hpUp[i]);
}

//Weapons
for(i = 0; i < 10; i+=1)
{
    file_bin_write_byte(f, global.swords[i]);
}
for(i = 0; i < 10; i+=1)
{
    file_bin_write_byte(f, global.shields[i]);
}

//Special
for(i = 0; i < 20; i+=1)
{
    file_bin_write_byte(f, global.special[i]);
}

for(i = 10; i < 20; i+=1)
{
    file_bin_write_byte(f, global.clearDoors[i]);
}

for(i = 10; i < 20; i+=1)
{
    file_bin_write_byte(f, global.clearItem[i]);
}

for(i = 0; i < 10; i+=1)
{
    file_bin_write_byte(f, global.clearDoors[i]);
}
//story
for(i = 0; i < 31; i+=1)
{
    file_bin_write_byte(f, global.story[i]);
}

for(i = 0; i < 10; i+=1)
{
    file_bin_write_byte(f, global.clearItem[i]);
}

tem = global.upstairsWingNum;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.downstairsWingNum;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.centralWingNum;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.playerExp + global.expBonus;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.levelExp;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem)

tem = global.currentLevel;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem)

if(global.currentFloor < 0)
{
    tempCurrent = global.currentFloor + 100;
}
tem = tempCurrent;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.maxFloor;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

if(global.minFloor < 0)
{
    tempMin = global.minFloor + 100;
}
tem = tempMin;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

tem = global.isCheated;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

global.isPreviousCheated = global.isCheated;

file_bin_close(f);

//���S���Ǝ��Ԃ̕ۑ�
saveExtra();
saveDeathTime();


