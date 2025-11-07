hit = instance_create(x + 2, y + 16, obj_swordhit);
hit.image_xscale = -1;
audio_playsound(sndSkill1);
p_dis = point_distance(x,y,400,304);
p_dir = point_direction(400,304,x,y);
tx = 400 + p_dis * 0.75 * cos(degtorad(p_dir));
ty = 304 - p_dis * 0.75 * sin(degtorad(p_dir));
with(obj_yellowKnightBullet1)
{
    speed = 8;
    direction = point_direction(x,y, other.tx, other.ty);
}
alarm[7]=30;

