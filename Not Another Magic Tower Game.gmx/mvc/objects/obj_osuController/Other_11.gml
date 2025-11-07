if(currentInd < standardCount)
{
    cursor.targetX = standard_x[currentInd];
    cursor.targetY = standard_y[currentInd];
    cursor.spd = point_distance(cursor.x, cursor.y, cursor.targetX, cursor.targetY) / RangeClamp(standard_time[currentInd] - time - 3, 1, standard_time[currentInd] - time - 3);
    with(cursor)
    {
        move_towards_point(targetX, targetY, spd);
    }
    cursor.alarm[11] = 1;
}
else
{
    speed = 0;
    cursor.alarm[1] = 1;
    obj_osuAutoPilot.alarm[1] = 1;
    obj_osuComboBurst.alarm[0] = 1;
}

