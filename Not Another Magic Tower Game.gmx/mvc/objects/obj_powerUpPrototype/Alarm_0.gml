switch(type)
{
    case 0: if(global.attUp[ind]) instance_destroy();break;
    case 1: if(global.defUp[ind]) instance_destroy();break;
    case 2: if(global.hpUp[ind]) instance_destroy();break;
    case 3: if(global.swords[ind]) instance_destroy();break;
    case 4: if(global.shields[ind]) instance_destroy();break;
    default: break;
}

