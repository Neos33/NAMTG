with(obj_tre_bullet3){
    rnd = irandom(3);
    xx = 400 + lengthdir_x(100,rnd*90+45);
    yy = 304 + lengthdir_y(100,rnd*90+45);
    speed = point_distance(x,y,xx,yy)/37;
    direction = point_direction(x,y,xx,yy);
    image_alpha = 0.5;
    alarm[0] = 38;
}
alarm[4]=0;

