centerX = argument0;
centerY = argument1;
dimension = argument2;
radius = argument3;
startAngle = argument4;
ammount = argument5;
time = argument6;
prototype = argument7;
spr_index = argument8;
spr_speed = argument9;

if(dimension > 4)
{
    if(dimension mod 2 == 0)
    {
        explodePolygon(argument0,argument1, argument2 / 2,argument3,argument4,argument5,argument6,argument7, argument8, argument9, true);
        explodePolygon(argument0,argument1, argument2 / 2,argument3,argument4 + 360 / argument2,argument5,argument6,argument7, argument8, argument9, true);
    }
    else
    {
        explodePolygon(argument0,argument1, argument2,argument3,argument4,argument5,argument6,argument7, argument8, argument9, false);
    }
}

//sample
//explodePolygon2(view_xview + 400,view_yview + 304, 5,250,90,6,50,obj_explodePrototye, sprCherry, 1 / 15);

