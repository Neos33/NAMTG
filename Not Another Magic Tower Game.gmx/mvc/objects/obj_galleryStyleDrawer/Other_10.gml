__background_set( e__BG.Alpha, 0, 0.8 );
__background_set( e__BG.Blend, 0, color );

centerX = 400; 
centerY = 304; 
minRadius = 1; 
maxRadius = minRadius + 1152;
rotateSpd = -2;
rspd1 = -1;
rspd2 = 0.5;
interval = 20;

pAngle = 360/dimension;
sAngle = pAngle/2;

acc = 0.0576;
v0 = 11.52;

for(var i = 0; i < 10; i += 1)
{
    var t = i * 20;
    var spd = v0 - acc * t;
    var dis = maxRadius - (v0 * t - 0.5 * acc * sqr(t));
    sub = instance_create(0,0,obj_galleryStyleCircleDrawer);
    sub.centerX = centerX;
    sub.centerY = centerY;
    sub.spd = spd;
    sub.acc = acc;
    sub.dimension = dimension;
    sub.radius = dis;
    sub.minRadius = minRadius;
    sub.color = color;
}

alarm[0] = 20;

