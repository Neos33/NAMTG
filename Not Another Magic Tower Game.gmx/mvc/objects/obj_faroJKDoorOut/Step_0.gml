if(place_meeting(x,y,player))
{
    if(obj_faroJKRecord.start && keyboard_check_pressed(global.upbutton))
    {
        if(!transport)
        {
            transport = true;
            obj_faroJKRecord.start = false;
            player.frozen = true;
            player.x = 0 + 17;
            player.y = 48 + 23;
            player.image_alpha = 0;
            bow.image_alpha = 0;
            instance_create(432+17,480+23,obj_faroMMMPlayer);
        }
    }
}

if(transport)
{
    
}

