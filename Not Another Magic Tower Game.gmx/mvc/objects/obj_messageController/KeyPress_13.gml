/// @description Remove message, or skip to end
if(keyboard_check_pressed(vk_enter) && is_message()) {
    sound = false;
    if(pos < string_length(message_read())) {
        pos = string_length(message_read());
    } else {
        message_remove();
        //Put a sound here if you want one when the messages are closed
        if(instance_exists(obj_dialogEmotes))
        {
            with(obj_dialogEmotes)
            {
                instance_destroy();
            }
        }
    }
}

