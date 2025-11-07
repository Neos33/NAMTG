draw_set_font(fontST);
draw_set_color(c_orange);
draw_set_halign(fa_left);
draw_set_circle_precision(64);
draw_set_alpha(alpha);

xOffset = -8;
yOffset = -16;
xGap = 40;
yGap = 40;
for(i = 0; i < 18; i += 1)
{
    if(i < 11)
    {
        if(global.special[i])
        {
            draw_sprite_ext(spr[i], 0, x + xOffset + xGap * (i mod 5), y + yOffset + yGap * floor(i / 5), 0.8,0.8,0,c_white,alpha);
        }
        else
        {
            draw_sprite_ext(sprUnknown, 0, x + xOffset + xGap * (i mod 5), y + yOffset + yGap * floor(i / 5), 0.8,0.8,0,c_gray,alpha);    
        }
    }
    else if(i > 13)
    {
        if(global.special[i])
        {
            draw_sprite_ext(spr[i-3], 0, x + xOffset + xGap * ((i-3) mod 5), y + yOffset + yGap * floor((i-3) / 5), 0.8,0.8,0,c_white,alpha);
        }
        else
        {
            draw_sprite_ext(sprUnknown, 0, x + xOffset + xGap * ((i-3) mod 5), y + yOffset + yGap * floor((i-3) / 5), 0.8,0.8,0,c_gray,alpha);    
        }
    }
}

/*for(i = 0; i < 2; i+=1)
{
    if(global.special[i + 8])
    {
        draw_sprite_ext(spr[i + 8], 0, x + xOffset + xGap * (i + 1), y + yOffset + yGap * 2, 1,1,0,c_white,alpha);
    }
    else
    {
        draw_sprite_ext(sprUnknown, 0, x + xOffset + xGap * (i + 1), y + yOffset + yGap * 2, 1,1,0,c_gray,alpha);
    }
}*/
draw_text(x + 16,y+120,string_hash_to_newline(" * 1000 = "+string(global.amount[3])));
draw_circle(x+80,y+50,110,2);



draw_reset_color();
draw_set_circle_precision(24);


/*draw_text(x+48,y+32*0," * 1000 ="+string(1000*global.special[0]));
draw_text(x+48,y+32*1," * 1000 ="+string(1000*global.special[1]));
draw_text(x+48,y+32*2," * 1000 ="+string(1000*global.special[2]));
draw_text(x+48,y+32*3," * 1000 ="+string(1000*global.special[3]));
//draw_text(x+48,y+32*4," * 1000 ="+1000*string(global.redKeyNum));
draw_sprite_ext( spr_floorTran,0,x+16,y-16,1,1,0,c_white,alpha);
draw_sprite_ext( spr_fairyLetter,0,x+16,y+16,1,1,0,c_white,alpha);
draw_sprite_ext( spr_expCoin,0,x+16,y+16*3,1,1,0,c_white,alpha);
draw_sprite_ext( spr_secretDetector ,0,x+16,y+16*5,1,1,0,c_white,alpha);
//draw_sprite( spr_ironKey,0,x+16,y+16*7);






/* */
/*  */
