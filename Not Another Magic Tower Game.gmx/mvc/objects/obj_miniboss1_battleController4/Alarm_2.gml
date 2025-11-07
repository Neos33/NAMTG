if(explodeCount == 1)
{
 explodePolygon(400, 304, 4, 450, ang, 7, 50, obj_smallGrayCherry, spr_minibossbullet, 1/8, 1);
}
else
{
 explodePolygon2(400, 304, 3 + explodeCount, 450, ang, 7, 50, obj_smallGrayCherry, spr_minibossbullet, 1/8);
}
with(obj_minibossBullet1)
{
 if(key == other.explodeCount)
 {
  instance_destroy();
 }
}
instance_create(0,0,obj_blinkBlack);
ang += 45;
explodeCount += 1;
if(explodeCount < 6)
{
 alarm[2] = 12;
}

