x = px[pathInd];
y = py[pathInd];
pathInd += 1;
if(pathInd == pathTotal)
{
    pathInd = 0;
}
tx = px[pathInd];
ty = py[pathInd];
move_towards_point(tx,ty, point_distance(x,y,tx,ty)/pathTime);
alarm[0] = pathTime;

