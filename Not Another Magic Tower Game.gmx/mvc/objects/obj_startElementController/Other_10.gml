for(i=0;i<ammount;i+=1)
{
    instance_create(room_width/2 + r * cos(degtorad(i * stepAngle + subAngle * (count mod subCount))), room_height/2 - r * sin(degtorad(i * stepAngle + subAngle * (count mod subCount))), obj_startElement);
}

