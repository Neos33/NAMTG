switch(type)
{
    case Key_Type.Yellow: if(global.yellowDoors[ind]) instance_destroy();break;
    case Key_Type.Blue: if(global.blueDoors[ind]) instance_destroy();break;
    case Key_Type.Red: if(global.redDoors[ind]) instance_destroy();break;
    case Key_Type.Green: if(global.greenDoors[ind]) instance_destroy();break;
    case Key_Type.Iron: if(global.ironDoors[ind]) instance_destroy();break;
    default: break;
}

