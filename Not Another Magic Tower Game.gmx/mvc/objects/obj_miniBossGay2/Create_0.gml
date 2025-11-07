rotate = 0;
high = 0;
climax = 0;
dimChange = 0;
dim = 0;
ang = 0;
escape = 0;

image_speed = 0;
image_alpha = 0;
explodePolygon(x, y, 3, 800, 0, 8, 50, obj_minibossBullet3, spr_minibossbullet, 1/8, 1);
with(obj_minibossBullet3)
{
 dim = 3;
 image_angle = direction;
}
explodePolygon(x, y, 4, 800, 0, 8, 50, obj_minibossBullet3, spr_minibossbullet, 1/8, 1);
with(obj_minibossBullet3)
{
 if(dim == 0)
 {
     dim = 4;
     image_angle = direction;
 }
}
explodePolygon2(x, y, 5, 800, 0, 8, 50, obj_minibossBullet3, spr_minibossbullet, 1/8);
with(obj_minibossBullet3)
{
 if(dim == 0)
 {
     dim = 5;
     image_angle = direction;
 }
}
explodePolygon2(x, y, 6, 800, 0, 8, 50, obj_minibossBullet3, spr_minibossbullet, 1/8);
with(obj_minibossBullet3)
{
 if(dim == 0)
 {
     dim = 6;
     image_angle = direction;
 }
}
explodePolygon2(x, y, 7, 800, 0, 8, 50, obj_minibossBullet3, spr_minibossbullet, 1/8);
with(obj_minibossBullet3)
{
 if(dim == 0)
 {
     dim = 7;
     image_angle = direction;
 }
}
dim = 3;
alarm[0] = 10;
alarm[1] = 10;
alarm[2] = 100;
alarm[3] = 300;
alarm[4] = 475;
alarm[5] = 650;
alarm[10] = 700;
alarm[11] = 30;


