if(pid < obj_slime_king_combat.soundInd)
{
    with(obj_slime_red_summoned)
    {
        sound = false;
    }
    sound = true;
    obj_slime_king_combat.soundInd = pid;
}

