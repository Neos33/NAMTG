__view_set( e__VW.XView, 0, random_range(-wave,wave) );
__view_set( e__VW.YView, 0, random_range(-wave,wave) );
if(!instance_exists(obj_monsterBattlePrototype))
{
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, 0 );
    instance_destroy();
}

