if !instance_exists(obj_skeletonHead)
    exit;
    
    
gather = true;
xpos = obj_skeletonHead.x + choose(-6,0,6);
ypos = obj_skeletonHead.y + random_range(0, 32);
dis = point_distance(obj_skeletonHead.x, obj_skeletonHead.y, x, y);
time = 50 + 100 * (ypos - obj_skeletonHead.y)/ 32;
spd = dis / time;

