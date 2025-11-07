/// @description screenFlash(time)
/// @param time
//
//  flash the screen in the amount of time
//
//      time        the time that screen flashes white, 10 in default
//
{
    var inst;
    inst = instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objScreenFlash);
    if(argument0>0){
        inst.time = argument0;
    }
    else{
        inst.time = 10;
    }
}
