if(!triggered)
{
    triggered = true;
    if(!instance_exists(obj_fatPrincess))
    {
        message_add("An open window that connected with outside. It's really high that you can see clouds arround you.");
        alarm[0] = 70;
    }
    else
    {
        message_add("Kid : Maybe this is the only way I can escape now.");
        alarm[1] = 5;
    }
}

