if(!player_is_alive())
{
    exit;
}
count += 1;

switch(count)
{
    case 0: instance_create(x,y,obj_dsBlueCrystall);break;
    case 1: instance_create(x,y,obj_dsRedCrystall);break;
    case 2: instance_create(x,y,obj_dsGreenCrystall);break;
    case 3: instance_create(x,y,obj_dsPurpleCrystal);break;
    case 4: instance_create(x,y,obj_dsYellowCrystall);break;
    case 5: alarm[5] = 1; break;
    case 6: alarm[7] = 15; break;
    default: break;
}
//instance_create(x,y, obj_dsPurpleCrystal); //choose(obj_dsRedCrystall, obj_dsBlueCrystall, obj_dsYellowCrystall, obj_dsGreenCrystall));

if(count < 5)
{
 sound_fix(snd_touhou_1UP);
}
else if(count == 6)
{
 sound_fix(sndDark2);
}
/*e1 = instance_create(200,200,obj_dsLaserEmitter);
e1.startAngle = 0;
e1.stepAngle = 16;
e2 = instance_create(600,200,obj_dsLaserEmitter);
e2.startAngle = 180;
e2.stepAngle = -16;

/* */
/*  */
