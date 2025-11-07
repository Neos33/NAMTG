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
IsConvex = argument10;

if(dimension > 2)
{
    if(radius == 0)
        radius = 800;
    angleSum = 0; 
    if(IsConvex)
    {
        angleSum = (dimension - 2) * 180;
    }
    else
    {
        angleSum = (dimension - 4) * 180;
    }
    cornerAngle = angleSum / dimension;
    
    length = radius * cos(degtorad(cornerAngle / 2)) * 2;
    startX = centerX + radius * cos(degtorad(startAngle));
    startY = centerY + radius * sin(degtorad(startAngle));
    interval = length / ammount;
    lineAngle =  startAngle + 180 - cornerAngle / 2;
    for(i = 0; i < dimension; i+=1)
    {
        for(j = 0; j < ammount; j+=1)
        {
            objX = startX + interval * j * cos(degtorad(lineAngle));
            objY = startY + interval * j * sin(degtorad(lineAngle));
            dis = point_distance(objX, objY, centerX, centerY);
            spd = dis / time;
            obj[i * ammount + j] = instance_create(centerX, centerY, prototype);
            obj[i * ammount + j].targetX = objX;
            obj[i * ammount + j].targetY = objY;
            obj[i * ammount + j].spd = spd;
            if(spr_index != -1)
            {
                obj[i * ammount + j].sprite_index = spr_index;
            }
            if(spr_speed != -1)
            {
                obj[i * ammount + j].image_speed = spr_speed;
            }
            with(obj[i * ammount + j])
            {
                move_towards_point(targetX, targetY, spd);
            }
        }
        startX += length * cos(degtorad(lineAngle));
        startY += length * sin(degtorad(lineAngle));
        lineAngle += 180 - cornerAngle;
    }
}

//sample
//explodePolygon(view_xview + 400,view_yview + 304, 5,250,90,6,50,obj_explodePrototye, sprCherry, 0, 1 / 15, true);

