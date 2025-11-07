switch(type)
{
    case Key_Type.Yellow: if(global.yellowKeys[ind]) instance_destroy();break;
    case Key_Type.Blue: if(global.blueKeys[ind]) instance_destroy();break;
    case Key_Type.Red: if(global.redKeys[ind]) instance_destroy();break;
    case Key_Type.Green: if(global.greenKeys[ind]) instance_destroy();break;
    case Key_Type.Iron: if(global.ironKeys[ind]) instance_destroy();break;
    default: break;
}

