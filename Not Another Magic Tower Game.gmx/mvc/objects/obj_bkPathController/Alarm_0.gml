if(currentPathIndex < pathCount)
{
    //execute_string('currentPath = pathBk +' + string(currentPathIndex) );
    var currentPath = path[currentPathIndex];
    var startX = path_get_x(currentPath,0);
    var startY = path_get_y(currentPath,0);
    var endX = path_get_x(currentPath,1);
    var endY = path_get_y(currentPath,1);
    var pathEle = instance_create(startX, startY, obj_bkPathElement);
    pathEle.image_angle = point_direction(startX, startY, endX, endY);
    pathEle.path = path[currentPathIndex];
    currentPathIndex += 1;
    alarm[0] = 15 + 10 * obj_burningKnight_combat.hp / obj_burningKnight_combat.oHP;
}
else
{
    alarm[1] = 1;
}

