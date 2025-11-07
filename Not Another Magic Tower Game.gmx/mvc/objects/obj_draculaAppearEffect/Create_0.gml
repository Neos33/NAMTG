image_xscale = 7;
image_yscale = 17;
image_speed = 0;
image_alpha = 0;
image_index = 5;
sound_play(sndDraculaAppear);
if(!(obj_dracula_combat.x == 304 && obj_dracula_combat.y == 368))
{
    sound_play(choose(sndDraculaLaugh, sndDraculaMock));
}
alarm[1]=1;

