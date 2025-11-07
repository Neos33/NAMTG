path = path_add();
if(crossWall)
{
    mp_grid_path(gridWall, path,x,y, targetX, targetY, superCrazy);
    pathCrossWall = true;
}
else
{
    mp_grid_path(gridAll, path,x,y, targetX, targetY, superCrazy);
    pathCrossWall = false;
}
path_set_closed(path,false);
path_set_kind(path,0);
path_start(path,spd,0,1);
var tt = instance_create(targetX, targetY, obj_dwTarget);
tt.first = true;

