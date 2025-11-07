if !player_is_alive(){
    sprite_index=sprB1_think;
    alarm[0]=0;
    speed=0;
    exit;
}
if !place_free(x+hspeed,y) hspeed*=-1;
image_xscale=-sign(hspeed);
if place_meeting(x,y+4,obj_wall){
    sprite_index=sprB1_walk;
}
else{
    sprite_index=sprB1_fly
}

if blend = 1 and x>350 and x<450{
    timer+=1;
    image_blend = merge_color(c_white,c_dkgray,timer*0.02);
    if timer=50{
        timer=0;
        blend=0;
        depth = 2000000;
    }
}

if(!instance_exists(obj_corazone_combat)) 
    instance_destroy();
image_alpha = obj_corazone_combat.image_alpha;

