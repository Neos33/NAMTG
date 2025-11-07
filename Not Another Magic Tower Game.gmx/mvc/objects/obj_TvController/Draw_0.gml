draw_set_font(font40);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_white);

draw_set_alpha(1);
draw_text(96,40,string_hash_to_newline("ECHOSHIFT"))
draw_set_alpha(alpha);
draw_text(96, 88, string_hash_to_newline(title));
draw_set_font(font12);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if(stageIndex == -1)
{    
    spr = sprTvLoading;
    sprIndex = floor(time / 5) mod 4;
    draw_sprite_ext(sprTvLoading, floor(time / 5) mod 4, 96, 224,1,1,0,c_white,alpha);
    draw_text(8, 336, string_hash_to_newline("Stage Best:"));
    draw_text(16,388, string_hash_to_newline("???"));
    draw_text(8,464, string_hash_to_newline("Stage Diff:"));
    draw_text(8,496, string_hash_to_newline("???"));
    //draw_text(8,512, "Personal Best:");
    //draw_text(8,544, "???");
}
else if(stageIndex == 0)
{
    spr = sprTvLoading;
    sprIndex = floor(time / 5) mod 4;
    draw_sprite_ext(sprTvLoading, floor(time / 5) mod 4, 96, 224,1,1,0,c_white,alpha);
    draw_set_font(font12);
    draw_text(8, 336, string_hash_to_newline("Stage Best:"));
    draw_set_font(font24);
    draw_text(16,388, string_hash_to_newline("N/A"));
    draw_set_font(font12);
    draw_text(8,464, string_hash_to_newline("Stage Diff:"));
    draw_set_font(font24);
    draw_text(8,496, string_hash_to_newline("N/A"));
}
else
{
    spr = sprJKStageInfo;
    sprIndex = stageIndex - 1;
    draw_sprite_ext(sprJKStageInfo, stageIndex - 1, 96, 224,1,1,0,c_white,alpha);
    draw_text(8, 336, string_hash_to_newline("Stage Best:"));

    draw_text(8,464, string_hash_to_newline("Stage Diff:"));
    for(var i = 0; i < levelDiff; i+=1)
    {
        draw_sprite_ext(sprDiffStar, 0,  8 + 24 * i, 496,1,1,0,c_white,alpha);
    }
    baseline = 496;
    starIndex = 1;
    draw_set_font(font6);
    draw_set_valign(fa_middle);
    for(i=0;i<1;i+=1)
    {
        draw_sprite_ext(sprStarButton,starIndex,12 + 14 * i, baseline, 1,1,0,c_white,alpha);
    }
    draw_text(52, baseline, string_hash_to_newline(":"));
    for(i = 0; i < levelDiff1; i+=1)
    {
        draw_sprite_ext(sprDiffStar1, floor((levelDiff1 - 1) / 3),  68 + 12 * i, baseline,0.6,0.6,0,c_white,alpha);
    }
    baseline += 16;
    for(i=0;i<2;i+=1)
    {
        draw_sprite_ext(sprStarButton,starIndex,12 + 14 * i, baseline, 1,1,0,c_white,alpha);
    }
    draw_text(52, baseline, string_hash_to_newline(":"));
    for(i = 0; i < levelDiff2; i+=1)
    {
        draw_sprite_ext(sprDiffStar1, floor((levelDiff2 - 1) / 3),  68 + 12 * i, baseline,0.6,0.6,0,c_white,alpha);
    }
    baseline += 16;
    for(i=0;i<3;i+=1)
    {
        draw_sprite_ext(sprStarButton,starIndex,12 + 14 * i, baseline, 1,1,0,c_white,alpha);
    }
    draw_text(52, baseline, string_hash_to_newline(":"));
    for(i = 0; i < levelDiff3; i+=1)
    {
        draw_sprite_ext(sprDiffStar1, floor((levelDiff3 - 1) / 3),  68 + 12 * i, baseline,0.6,0.6,0,c_white,alpha);
    }
    draw_sprite_ext(sprDiffStar1, 0,  8 + 6, baseline + 24,0.8,0.8,0,c_white,alpha);
    draw_sprite_ext(sprDiffStar1, 1,  8 + 42 * 1 + 6, baseline + 24,0.8,0.8,0,c_white,alpha);
    draw_sprite_ext(sprDiffStar1, 2,  8 + 42 * 2 + 6, baseline + 24,0.8,0.8,0,c_white,alpha);
    draw_sprite_ext(sprDiffStar1, 3,  8 + 42 * 3 + 6, baseline + 24,0.8,0.8,0,c_white,alpha);
    draw_set_halign(fa_left);
    draw_text(24, baseline + 24, string_hash_to_newline(" - E"));
    draw_text(24 + 42 * 1, baseline + 24, string_hash_to_newline("- N"));
    draw_text(24 + 42 * 2, baseline + 24, string_hash_to_newline("- H"));
    draw_text(24 + 42 * 3, baseline + 24, string_hash_to_newline("- VH"));
    //draw_text(8,512, "Personal Best:");
    if(global.ExtraJkBest[stageIndex - 1] > 0)
    {
        for(i = 0; i < 7; i += 1)
        {
            if(i < global.ExtraJkBest[stageIndex - 1])
            {
                draw_sprite_ext(sprPlayerIdle, 0,  8 + 24 * i + 17 * 0.6 + 3, 380, 0.6, 0.6, 0, c_white, alpha);
            }
            else if(alpha > 0.5)
            {
                draw_sprite_ext(sprPlayerIdle, 0,  8 + 24 * i + 17 * 0.6 + 3, 380, 0.6, 0.6, 0, c_gray, 0.5);
            }
        }
        draw_set_color(c_green);
        draw_line_width(8, 396, 8 + 24 * star3, 396, 3);
        draw_set_color(c_yellow);
        draw_line_width(8 + 24 * star3, 396, 8 + 24 * star2, 396, 3);
        draw_set_color(c_red);
        draw_line_width(8 + 24 * star2, 396, 8 + 24 * star1, 396, 3);
        draw_set_color(c_white);
        baseline1 = 404;
        baseline = 408;
        starIndex = 0;
        if(global.ExtraJkBest[stageIndex - 1] <= star3)
        {
            starIndex = 1;
        }
        draw_line(8,baseline1, 8 + 24 * star3, baseline1);
        draw_line(8 + 24 * star3, baseline1, 8 + 24 * star3, 396);
        for(i=0;i<3;i+=1)
        {
            draw_sprite_ext(sprStarButton,starIndex,12 + 14 * i, baseline + 4, 1,1,0,c_white,alpha);
        }
        if(global.ExtraJkBest[stageIndex - 1] <= star2)
        {
            starIndex = 1;
        }
        baseline1 += 16;
        baseline += 16;
        draw_line(8,baseline1, 8 + 24 * star2, baseline1);
        draw_line(8 + 24 * star2, baseline1, 8 + 24 * star2, 396);
        for(i=0;i<2;i+=1)
        {
            draw_sprite_ext(sprStarButton,starIndex,12 + 14 * i, baseline + 4, 1,1,0,c_white,alpha);
        }
        if(global.ExtraJkBest[stageIndex - 1] <= star1)
        {
            starIndex = 1;
        }
        baseline1 += 16;
        baseline += 16;
        draw_line(8,baseline1, 8 + 24 * star1, baseline1);
        draw_line(8 + 24 * star1, baseline1, 8 + 24 * star1, 396);
        for(i=0;i<1;i+=1)
        {
            draw_sprite_ext(sprStarButton,starIndex,12 + 14 * i, baseline + 4, 1,1,0,c_white,alpha);
        }
        //for(i = 0; i < global.ExtraJkBest[stageIndex - 1]; i+=1)
        //{
        //    draw_sprite_ext(sprPlayerIdle, 0,  8 + 24 * i + 17 * 0.6 + 3, 556,0.6,0.6,0,c_white,alpha);
        //}
    }
    else
    {
        draw_set_font(font12);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_text(16,388, string_hash_to_newline("???"));
    }
}
draw_set_font(fontBasicInfoMini);
draw_set_color(c_silver);
draw_set_alpha(backalpha);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text(96,592, string_hash_to_newline("Press Backspace to Return"));



draw_reset();

