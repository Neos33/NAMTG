if(x < __view_get( e__VW.XView, 0 ) && p)
{
    with(p)
    {
        instance_destroy();
    }
    p = noone;
}
if(instance_exists(obj_trianglePlane))
{
 alpha = 0.5 + 2 * abs((obj_faShiLiu_combat.combatTime mod 50) - 25) / 100;
}
else
{
 if(alpha > 0)
 {
  alpha -= 0.01;
 }
}

