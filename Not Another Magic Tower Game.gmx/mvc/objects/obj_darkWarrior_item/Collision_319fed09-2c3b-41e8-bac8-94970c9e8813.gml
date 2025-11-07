switch(image_index)
{
    case 0: 
         with(obj_darkWarrior_combat)
         {
            if(bombCount > minBombCount)
            {
                bombCount -= 1;
            }
         }
         break;
    
    case 1: 
         with(obj_darkWarrior_combat)
         {
            if(powerCount > minPowerCount)
            {
                powerCount -= 1;
            }
         }
         break;
    case 2: 
         with(obj_darkWarrior_combat)
         {
            if(spd > minSpd)
            {
                spd -= 0.5;
            }
         }
         break;
    case 3: obj_darkWarrior_combat.crossWall = false; break;
    case 4: 
         with(obj_darkWarrior_combat)
         {
            if(godtime > 300)
            {
                spd -= 300;
            }
            else
            {
                godtime = 0;
            }
         }
         break;
}
with(obj_darkWarrior_combat)
{
    event_user(0);
}
instance_destroy();


