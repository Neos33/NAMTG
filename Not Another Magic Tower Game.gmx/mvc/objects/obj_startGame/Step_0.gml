carousel_object_step_scr();

if(image_xscale > 0.9)
{
    if(keyboard_check_pressed(global.jumpbutton) ||
    (mouse_check_button_pressed(mb_left)
    && mouse_x > (x - sprite_width / 2)
    && mouse_x < (x + sprite_width / 2) 
    && mouse_y > (y - sprite_height / 2) 
    && mouse_y < (y + sprite_height / 2)))
    {
    global.difficulty = 1;
    global.savenum = 1;
    isNew = true;
    if(file_exists("save1") == true){
      isNew = show_question("New game will overwrite the current save you use, are you sure to continue?");
      if(!isNew)
      {
        exit;
      }
      file_delete("save1");
    }
    global.death[global.savenum] = 0;
    global.timestep[global.savenum] = 0;
    global.attack = 2;
    global.defense = 0;
    global.hp = 1;
    global.yellowKeyNum = 0;
    global.blueKeyNum = 0;
    global.redKeyNum = 0;
    global.greenKeyNum = 0;
    global.ironKeyNum = 0;

    for(i = 0; i < 350; i+=1)
    {
        global.monsters[i] = 0;
    }

    for(i = 0; i < 200; i+=1)
    {
        global.yellowKeys[i] = 0;
    }

    for(i = 0; i < 100; i+=1)
    {
        global.blueKeys[i] = 0;
    }

    for(i = 0; i < 50; i+=1)
    {
        global.redKeys[i] = 0;
    }
    for(i = 0; i < 50; i+=1)
    {
        global.greenKeys[i] = 0;
    }
    for(i = 0; i < 20; i+=1)
    {
        global.ironKeys[i] = 0;
    }
    
    for(i = 0; i < 30; i+=1)
    {
        global.lvBlocks[i] = 0;
    }

    //Doors
    for(i = 0; i < 200; i+=1)
    {
        global.yellowDoors[i] = 0;
    }
    for(i = 0; i < 100; i+=1)
    {
        global.blueDoors[i] = 0;
    }
    for(i = 0; i < 50; i+=1)
    {
        global.redDoors[i] = 0;
    }
    for(i = 0; i < 50; i+=1)
    {
        global.greenDoors[i] = 0;
    }
    for(i = 0; i < 50; i+=1)
    {
        global.ironDoors[i] = 0;
    }
    
    for(i = 0; i < 10; i+=1)
    {
        global.upstairsWing[i] = 0;
    }

    for(i = 0; i < 10; i+=1)
    {
        global.downstairsWing[i] = 0;
    }
    
    for(i = 0; i < 10; i+=1)
    {
        global.centralWing[i] = 0;
    }

    //PowerUps
    for(i = 0; i < 250; i+=1)
    {
        global.attUp[i] = 0;
    }
    for(i = 0; i < 250; i+=1)
    {
        global.defUp[i] = 0;
    }
    for(i = 0; i < 250; i+=1)
    {
        global.hpUp[i] = 0;
    }

    //Weapons
    for(i = 0; i < 10; i+=1)
    {
        global.swords[i] = 0;
    }
    for(i = 0; i < 10; i+=1)
    {
        global.shields[i] = 0;
    }

    //Special
    for(i = 0; i < 20; i+=1)
    {
        global.special[i] = 0;
    }
    
    for(i = 0; i < 20; i+=1)
    {
        global.clearDoors[i] = 0;
    }

    //story
    for(i = 0; i < 50; i+=1)
    {
        global.story[i] = 0;
    }
    
    for(i = 0; i < 50; i+=1)
    {
        global.secretWalls[i] = 0;
    }
    
    for(i = 0; i < 20; i+=1)
    {
        global.clearItem[i] = 0;
    }

    for(i = 0; i < 15; i+=1)
    {
        global.specialBlock[i] = 0;
    }
    
    for(i = 0; i < 10; i+=1)
    {
        global.specialTriggers[i] = 0;
    }
    
    for(i = 0; i < 10; i+=1)
    {
        global.gemPlaced[i] = 0;
    }
    
    global.upstairsWingNum = 0;
    global.downstairsWingNum = 0;
    global.centralWingNum = 0;
    
    global.playerExp = 0;
    global.expBonus = 0;
    global.levelExp = 0
    global.currentLevel = 0;

    global.currentFloor = 0;
    global.maxFloor = 0;
    global.minFloor = 0;
    global.isCheated = 0;
    
    global.TotalKills = 0;
    global.TotalKeysGet = 0;
    global.TotalKeysUsed = 0;
    
    global.isRandom = false;
    global.randomMonstersKilled = 0;
    
    global.dynamiteTutorial = false;
    global.dynamiteNum = 0;
    global.dynamitePurchaseTimes = 0;
    global.MaxChallengePoints = 0;
    
    global.MagicCloak = false;
    global.DynamiteX3 = false;
    global.PowerAmplifier = false;
    global.SaintShield = false;
    global.SaintSword = false;
    
    for(i=0; i < 10; i+=1)
    {
        global.challengeSets[i] = 0;
    }
    
    for(i = 0; i < 3; i+=1)
    {
        global.CCItem[i] = 0;
    }
    
    for(i = 0; i < 10; i+=1)
    {
        global.challengeRewards[i] = 0;
    }
    
    for(i = 0; i < 20; i+=1)
    {
        global.SpaceItems[i] = 0;
    }

    
    loadAchievements();
    if(file_exists("extraSave"))
    {
        file_delete("extraSave");
    }
    loadExtra();
    instance_create(0,0,obj_blackController1);
    }
}

