if(isRecoverBegin)
{  
    isRecoverBegin = false;
    frag1 = instance_create(x - 1000, y, obj_steelFragment);
    frag1.sprite_index = spr_steelFragment1;
    frag1.hspd = 0.1;
    frag1.recover = true;
    
    frag2 = instance_create(x + 1000, y, obj_steelFragment);
    frag2.sprite_index = spr_steelFragment2;
    frag2.hspd = -0.1;
    frag2.recover = true;
    
    frag3 = instance_create(x, y + 1000, obj_steelFragment);
    frag3.sprite_index = spr_steelFragment3;
    frag3.vspd = -0.1;
    frag3.recover = true;
    
    frag4 = instance_create(x, y - 1000, obj_steelFragment);
    frag4.sprite_index = spr_steelFragment4;
    frag4.vspd = 0.1;
    frag4.recover = true;
    
    
    sound_fix(sndQuake);
}
/*if(isWeakened)
{
    view_xview = random_range(-5,5);
    view_yview = random_range(-5,5);
    event_user(1);
}

/* */
/*  */
