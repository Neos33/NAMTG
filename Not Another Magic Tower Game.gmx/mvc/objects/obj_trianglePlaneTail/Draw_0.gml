if(p)
{
    ammount = floor((x - p.x) / tailWidth);
    piece = (x - p.x) mod tailWidth;
    for(i = 0; i < ammount; i += 1)
    {
        draw_sprite_ext(spr_trianglePlaneTail, 0.5 * (1 - sign(p.y - y)), p.x + tailWidth * i, p.y + tailWidth * i * sign(y - p.y) - tailWidth, 1, 1, 0, c_white, alpha);
    }

     draw_sprite_part_ext(spr_trianglePlaneTail, 0.5 * (1 - sign(p.y - y)), 0,0, piece, tailWidth * 2, 
                                                x - piece, p.y + tailWidth * ammount * sign(y - p.y) - tailWidth, 1, 1, c_white, alpha);
}

