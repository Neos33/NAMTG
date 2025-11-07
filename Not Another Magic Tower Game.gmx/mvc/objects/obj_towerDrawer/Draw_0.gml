for(i = -32 + tileOffset; i <= 640; i += 32)
{
    for(j = 0; j <= 128; j += 32)
    {
        if(xOffset + j > -32)
            draw_sprite(spr_seTile, flat, xOffset + j, i);
    }
    for(j = 160; j <= 224; j += 32)
    {
        if(xOffset + j > -32)
            draw_sprite(spr_seTile, side1, xOffset + j, i);
    }
    draw_sprite(spr_seTile, side2, xOffset + 256, i);
}

for(i = -96 + offset; i <= 800; i += 192)
{
    for(j = 152; j <= 256; j += 24)
    {
        if(xOffset + j > -32)
            draw_sprite(spr_seTile, sideEdge, xOffset + j, i + 32 - (j-160));
    }
    for(j = 0; j <= 128; j += 32)
    {
        if(xOffset + j > -32)
            draw_sprite(spr_seTile, flatEdge, xOffset + j, i + 48);
    }
    
    draw_sprite(spr_seTile, cage, xOffset + 64, i);
}

for(i = -32 + offset - 96; i <= 736; i += 192)
{
    draw_sprite(spr_seTile, windowTop, xOffset + 216, i - 80 - 32);
    draw_sprite(spr_seTile, windowBottom, xOffset + 216, i - 80);
}

for(i = -32 + tileOffset; i <= 640; i += 32)
{
    draw_sprite(spr_seTile, centerEdge, xOffset + 144, i);
}



