if(show) exit;
if(keyboard_check_pressed(global.upbutton))
{
    if(place_meeting(x,y,player))
    {
        if(rushInd == 9)
        {
            if(!instance_exists(obj_customRushController))
            {
              instance_create(x,y,obj_customRushController);
            }
        }
        else if(notAvailable)
        {
            message_add("System : At least one of the bosses in the challenge set hasn't been defeated yet. You cannot challenge this set at current time.");
        }
        else if(show_question("Challenge " + setName + "?"))
        {
            with(obj_galleryBrController)
            {
                challengeId = other.rushInd;
                event_user(0);
            }
            show = true;
        }
    }
}



