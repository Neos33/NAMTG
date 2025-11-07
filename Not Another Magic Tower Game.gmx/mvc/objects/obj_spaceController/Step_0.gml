angle += 0.2;
if(!player_is_alive()) exit;
if(room == rFapple) exit;
if(keyboard_check_pressed(global.spaceButton))
{
    disturbed = false;
    with(player)
    {
        if(place_meeting(x,y,obj_spaceSmog) || place_meeting(x,y,obj_conveyor))
        {
            other.disturbed = true;
        }
    }
    if(instance_number(obj_spaceTeleporter) < 3 && !disturbed)
    {
        instance_create(player.x,player.y,obj_spaceTeleporter);
    }
}


if(!player_is_alive()) exit;
if(room == rFapple) exit;
if(keyboard_check_pressed(global.downbutton) && ds_queue_size(queue) > 0)
{
    disturbed = false;
    with(player)
    {
        if(place_meeting(x,y,obj_spaceSmog) || place_meeting(x,y,obj_conveyor))
        {
            other.disturbed = true;
        }
    }
    if(!disturbed)
    {
        teleporter = ds_queue_dequeue(queue);
        with(teleporter)
        {
            instance_destroy();
        }
    }
}

