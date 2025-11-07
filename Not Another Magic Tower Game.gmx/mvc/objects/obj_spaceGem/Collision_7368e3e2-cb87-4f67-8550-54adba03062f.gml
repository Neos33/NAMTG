audio_playsound(snditem);
event_user(ind);
with(instance_create(obj_spaceNoteBoard.x-1, obj_spaceNoteBoard.y-1,obj_levelupFlash))
{
    image_xscale = 2;
    image_yscale = 2;
}
sound_fix(sndExpMax);
global.SpaceItems[ind] = true;
instance_destroy();

