  if(dif == 4){
    loadGame();    
  }else{
    global.difficulty = dif;
    if(file_exists("save"+string(global.savenum)) == true){
      file_delete("save"+string(global.savenum));
    }
    global.death[global.savenum] = 0;
    global.timestep[global.savenum] = 0;
    global.attack = 2;
    global.defense = 1;
    global.hp = 3;
    global.yellowKeyNum = 0;
    global.blueKeyNum = 0;
    global.redKeyNum = 0;
    global.greenKeyNum = 0;
    global.ironKeyNum = 0;

    for(i = 0; i < 200; i+=1)
    {
        global.monsters[i] = 0;
    }

    for(i = 0; i < 50; i+=1)
    {
        global.yellowKeys[i] = 0;
    }

    for(i = 0; i < 50; i+=1)
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
    for(i = 0; i < 50; i+=1)
    {
        global.ironKeys[i] = 0;
    }

    //Doors
    for(i = 0; i < 50; i+=1)
    {
        global.yellowDoors[i] = 0;
    }
    for(i = 0; i < 50; i+=1)
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

    //PowerUps
    for(i = 0; i < 50; i+=1)
    {
        global.attUp[i] = 0;
    }
    for(i = 0; i < 50; i+=1)
    {
        global.defUp[i] = 0;
    }
    for(i = 0; i < 50; i+=1)
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
        global.sheilds[i] = 0;
    }

    //Special
    for(i = 0; i < 50; i+=1)
    {
        global.special[i] = 0;
    }
    roomTo = rDebug
    event_inherited();
  }


