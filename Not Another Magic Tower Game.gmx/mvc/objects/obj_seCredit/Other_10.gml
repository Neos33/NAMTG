event_user(15);

listCount = ds_list_size(list[section]);
draw_set_font(fontSECredit);
for(detailInd = 0; detailInd < listCount; detailInd += 1)
{
    if(currentHeight > -32 && currentHeight < 640)
    {
        detailContent = ds_list_find_value(list[section], detailInd);
        draw_text(centerX, currentHeight, string_hash_to_newline(detailContent));
    }
    currentHeight += detailGap;
}

currentHeight += sectionGap;

