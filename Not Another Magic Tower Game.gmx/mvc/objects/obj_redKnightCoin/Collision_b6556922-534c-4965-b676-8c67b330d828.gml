if(!other.redKnightDash)
{
    with(other)
    {
        vspeed = obj_redKnightController.normalSpd;
        djump = true;
    }
}
sound_fix(sndGetstar);
with(obj_redKnightController)
{
    coinGet += 1;
    //execute_string("sound_fix(sndCoin" + string(straightCount + 1) + ");");
    sound_fix(asset_get_index("sndCoin" + string(straightCount + 1)));
    if(straightCount < 7)
    {
        straightCount += 1;
    }
    else
    {
        straightCount = 0;
    }
    alarm[2] = 50;
}
instance_change(obj_redKnightCoinEffect, true);

