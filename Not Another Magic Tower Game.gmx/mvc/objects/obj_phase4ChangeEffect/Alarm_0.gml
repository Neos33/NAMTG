if(!instance_exists(obj_phase4BounceKid))
    exit;
startChange = true;
if(__view_get( e__VW.XView, 0 ) > -950)
{
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (15) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (12) );
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) + (30) );
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) + (24) );
    alarm[0] = 2;
} 
else
{
    obj_faShiLiu_combat.phase = 6;
    obj_faShiLiu_combat.x = 400;
    obj_faShiLiu_combat.y = 120;
    obj_faShiLiu_combat.combatTime = 0;
    room_goto(rFaShiliu05);
}

