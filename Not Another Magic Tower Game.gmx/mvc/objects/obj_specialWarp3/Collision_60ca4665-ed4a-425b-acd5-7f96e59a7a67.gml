if(!sprite_exists(spr)) {
        //Get an image of the screen
        spr = sprite_create_from_surface(application_surface, 0, 0, 800, 608, false, false, 0, 0);
        //And stop all actions, not including this one
        instance_deactivate_all(true);
        instance_activate_object(world);
        b = instance_create(0,0,obj_beBlack);
        b.image_alpha = 0;
        b.alarm[1] = 1;
        alarm[0] = 100;
    }

