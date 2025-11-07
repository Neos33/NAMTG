switch(type)
{
    case Key_Type.Yellow: global.yellowKeys[ind] = 1;global.yellowKeyNum += ammount;break;
    case Key_Type.Blue: global.blueKeys[ind] = 1;global.blueKeyNum += ammount;break;
    case Key_Type.Red: global.redKeys[ind] = 1;global.redKeyNum += ammount;break;
    case Key_Type.Green: global.greenKeys[ind] = 1;global.greenKeyNum += ammount;break;
    case Key_Type.Iron: global.ironKeys[ind] = 1;global.ironKeyNum += ammount;break;
    default: break;
}
audio_playsound(snditem);
global.TotalKeysGet += 1;
txt = instance_create(x + 16, y, obj_ammountText);
txt.ammount = ammount;

/*print("type: ", type);
print("ind: ", ind);
print("ammount: ", ammount);
*/
instance_destroy();

/* */
/*  */
