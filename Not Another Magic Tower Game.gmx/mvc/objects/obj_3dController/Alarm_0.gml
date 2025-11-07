var yOffsetMin,yOffsetMax;
yOffsetMin = -1;
yOffsetMax = 1;
if(cNum == 7)
{
    cNum = 0;
}
else
{
    cNum += 1;
}
type = cType[cNum];
with(obj_3dFloorLightElement)
{
    image_index = other.type;
}
with(obj_3dCeilLightElement)
{
    image_index = other.type;
}

steps += 1;
switch(steps)
{
    case 1:
    case 6:
        with(obj_3dKidGay)
        {
            sprite_index = spr_gayBlue;
            image_xscale = 1.8;
            image_yscale = 2.4;
        }
        obj_3dBlueGay.image_alpha = 0;
        obj_3dRedGay.image_alpha = 0;
        yOffset = random_range(yOffsetMin,yOffsetMax);
        break;
    case 2:
    case 5:
        with(obj_3dKidGay)
        {
            sprite_index = spr_gayRed;
            image_xscale = 1.8;
            image_yscale = 2.4;
        }
        obj_3dBlueGay.image_alpha = 0;
        obj_3dRedGay.image_alpha = 0;
        yOffset = random_range(yOffsetMin,yOffsetMax);
        break;
    case 4:
        with(obj_3dKidGay)
        {
            sprite_index = spr_gayKid;
            image_xscale = 2.52;
            image_yscale = 3.28;
        }
        yOffset = random_range(yOffsetMin,yOffsetMax);
        obj_3dBlueGay.image_alpha = 0;
        obj_3dRedGay.image_alpha = 0;
        break;
    case 3:
    case 7:
        with(obj_3dKidGay)
        {
            sprite_index = spr_gayKid;
            image_xscale = 2.25;
            image_yscale = 3;
        };
        yOffset = 0;
        obj_3dBlueGay.image_alpha = 1;
        obj_3dRedGay.image_alpha = 1;
        break;
    default: break;
}
event_user(type);
alarm[0] = cInterval;

