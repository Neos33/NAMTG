var a = instance_create(x, y, obj_darkWarrior_bomb_fire);
a.p = p;
with(a)
{
    event_user(0);
}
instance_destroy();

