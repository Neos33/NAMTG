
if distance_to_object(WalljumpL) < 2 && place_free(x,y+1) {

vspeed=2;
maxFallSpeed=2;
sprite_index=sprPlayerSliding;
image_xscale=1
image_speed=1/2;


    if keyboard_check_pressed(global.rightbutton) && keyboard_check(global.jumpbutton) {
    sprite_index=sprPlayerJump;
    maxFallSpeed=8
    vspeed = -9;
    hspeed = 15;
    sound_fix(snd_wallum);
    
    }
    
    if keyboard_check_pressed(global.rightbutton) && !keyboard_check(global.jumpbutton) {
    hspeed=3
    maxFallSpeed=8
    sprite_index=sprPlayerFall;
    }

}

if distance_to_object(WalljumpL) > 1 && place_free(x,y+1) {
maxFallSpeed=8
}


if distance_to_object(WalljumpR) = 1 && place_free(x,y+1) {

vspeed=2;
maxFallSpeed=2;
sprite_index=sprPlayerSliding;
image_xscale=-1
image_speed=1/2;

    if keyboard_check_pressed(global.leftbutton) && keyboard_check(global.jumpbutton) {
    sprite_index=sprPlayerJump;
    maxFallSpeed=8
    vspeed = -9;
    hspeed = -15;
    sound_fix(snd_wallum);
    }
    
    if keyboard_check_pressed(global.leftbutton) && !keyboard_check(global.jumpbutton) {
    hspeed=-3
    maxFallSpeed=8
    sprite_index=sprPlayerFall;
    }

}

if distance_to_object(WalljumpR) > 1 && place_free(x,y+1) {
maxFallSpeed=8
}
