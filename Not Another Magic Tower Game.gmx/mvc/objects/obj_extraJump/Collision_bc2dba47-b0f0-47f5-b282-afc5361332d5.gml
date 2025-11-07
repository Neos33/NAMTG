with(other)
{
 djump = true;
}
repeat(10)
{
 instance_create(x, y, obj_extraJumpEffect);
}
instance_destroy();

