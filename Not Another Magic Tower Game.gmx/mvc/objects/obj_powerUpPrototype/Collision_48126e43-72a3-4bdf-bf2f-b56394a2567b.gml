switch(type)
{
    case 0: global.attUp[ind] = 1;global.attack += ammount;break;
    case 1: global.defUp[ind] = 1;global.defense += ammount;break;
    case 2: global.hpUp[ind] = 1;global.hp += ammount;break;
    case 3: global.swords[ind] = 1;global.attack += ammount;break;
    case 4: global.shields[ind] = 1;global.defense += ammount;break;
    default: break;
}
audio_playsound(snditem);
txt = instance_create(x + 16, y, obj_ammountText);
txt.ammount = ammount;
instance_destroy();

