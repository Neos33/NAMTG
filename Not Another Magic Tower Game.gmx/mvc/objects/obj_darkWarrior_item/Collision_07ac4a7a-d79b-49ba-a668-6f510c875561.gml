switch(image_index){
case 0: obj_darkWarrior_combat.bombCount += 1; break;
case 1: obj_darkWarrior_combat.powerCount += 1; break;
case 2: obj_darkWarrior_combat.spd += 0.5; break;
case 3: obj_darkWarrior_combat.crossWall = true; break;
case 4: obj_darkWarrior_combat.godtime += 200; break;
}
other.itemCount += 1;
instance_destroy();

