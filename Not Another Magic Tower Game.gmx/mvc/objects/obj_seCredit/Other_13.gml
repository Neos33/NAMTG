event_user(15);

listCount = ds_list_size(subCategory[section,0]);
draw_set_font(fontSECredit);
for(detailInd = 0; detailInd < listCount; detailInd += 1)
{
    if(currentHeight > -32 && currentHeight < 640)
    {
        draw_set_halign(fa_right);
        leftContent = ds_list_find_value(subCategory[section,0], detailInd);
        draw_text(centerX - 80, currentHeight, string_hash_to_newline(leftContent));
        draw_set_halign(fa_center);
        draw_text(centerX - 64, currentHeight, string_hash_to_newline("-"));
        draw_set_halign(fa_left);
        rightContent = ds_list_find_value(subCategory[section,1], detailInd);
        draw_text(centerX - 48, currentHeight, string_hash_to_newline(rightContent));
    }
    currentHeight += detailGap;
}

currentHeight += sectionGap;

