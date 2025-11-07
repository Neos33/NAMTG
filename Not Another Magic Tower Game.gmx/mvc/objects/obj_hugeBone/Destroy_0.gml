    with(obj_skeletonKing_combat)
    {
        image_xscale = 10;
        image_yscale = 12;
        if(player.x < 400)
        {
            x = 544;
        }
        else
        {
            x = 256;           
        }
        y = 352;
        phase = -1;
        jumpCount = 0;
        isShake = false;
        shakeSize = 3;
        gravity = 0.2;
        alarm[5] = 50;
    }

