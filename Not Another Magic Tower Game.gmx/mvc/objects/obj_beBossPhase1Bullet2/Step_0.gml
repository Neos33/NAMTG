if(point_distance(x,y,obj_bePhase1.x,obj_bePhase1.y) >= (obj_beBossPhase1Bubble.image_xscale * 128 - 8))
{
    direction += 180;
    instance_change(obj_beBossPhase1Bullet3, true);
}

image_angle = direction - 90;

