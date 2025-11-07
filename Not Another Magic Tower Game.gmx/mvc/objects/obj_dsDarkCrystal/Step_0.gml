if(player_is_alive())
{
    if(boom == true)
    {
        if(!instance_exists(obj_combatPlayerKiller))
        {
            boom = false;
            if(ach)
            {
                if(!global.achievements[85])
                {
                    var ch = instance_create(0,608,obj_achievements);
                    ch.index = 85;
                    global.achievements[85] = 1;
                }
            }
            obj_combatController.alarm[0] = 30;
        }
    }
}
event_inherited();

