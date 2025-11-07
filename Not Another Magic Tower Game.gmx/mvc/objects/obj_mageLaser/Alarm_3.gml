pAngle = image_angle;
if(followStatus < 10)
{
    follower = instance_create(xprevious, yprevious, obj_mageLaser);
    follower.image_angle = pAngle;
    follower.followStatus = followStatus + 1;
}
/*else if(followStatus == 1)
{
    follower = instance_create(xprevious, yprevious, obj_mageLaser);
    follower.image_angle = pAngle;
    follower.followStatus = 2;
}

/* */
/*  */
