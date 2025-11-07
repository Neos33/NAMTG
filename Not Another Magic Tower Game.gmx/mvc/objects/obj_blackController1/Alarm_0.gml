if(black.image_alpha < 1)
{
    black.image_alpha += 0.01;
    alarm[0] = 1;
}
else
{
    room_goto(rBegining);
}



