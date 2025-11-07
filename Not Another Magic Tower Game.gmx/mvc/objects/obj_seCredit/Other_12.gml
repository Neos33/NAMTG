event_user(15);

listCount = ds_list_size(subCategory[section,0]);
draw_set_font(fontSECredit);
for(detailInd = 0; detailInd < listCount; detailInd += 1)
{
    sprInd = ds_list_find_value(subCategory[section,0], detailInd);
    if(sprInd < 0)
    {
        if(sprInd == -1 || sprInd == -101)
        {
            imgHeight = 24;
        }
        else if(sprInd == -100)
        {
            imgHeight = 56;
        }
    }
    else
    {
        imgHeight = sprite_get_height(sprInd)/2 + 8;
    }
    currentHeight += imgHeight - 24;
    if(currentHeight > -64 && currentHeight < 672)
    {
        if(sprInd < 0)
        {
            if(sprInd == -1)
            {
                draw_set_halign(fa_center);
                draw_text(centerX, currentHeight, string_hash_to_newline("???"));
            }
            else if(sprInd == -100)
            {
                draw_sprite(spr_bePhase2_se, imageInd, centerX - 64, currentHeight);
                draw_sprite(spr_bePhase1_se, imageInd, centerX, currentHeight);
                draw_sprite(spr_bePhase3_se, imageInd, centerX + 64, currentHeight);
            }
            else if(sprInd == -101)
            {
                draw_sprite(spr_npc1, imageInd, centerX - 96, currentHeight - 16);
                draw_sprite(spr_npc2, imageInd, centerX - 48, currentHeight - 16);
                draw_sprite(spr_npc3, imageInd, centerX + 16, currentHeight - 16);
                draw_sprite(spr_npc4, imageInd, centerX + 64, currentHeight - 16);
            }
        }
        else
        {
            draw_sprite(sprInd, imageInd, centerX, currentHeight);
        }
        draw_set_halign(fa_right);
        leftContent = ds_list_find_value(subCategory[section,1], detailInd);
        draw_text(centerX - 16, currentHeight + imgHeight, string_hash_to_newline(leftContent));
        if(leftContent != "")
        {
            draw_set_halign(fa_center);
            draw_text(centerX, currentHeight + imgHeight, string_hash_to_newline("-"));
        }
        draw_set_halign(fa_left);
        rightContent = ds_list_find_value(subCategory[section,2], detailInd);
        draw_text(centerX + 16, currentHeight + imgHeight, string_hash_to_newline(rightContent));
    }
    currentHeight += detailGap + imgHeight + 20;
}

currentHeight += sectionGap;

