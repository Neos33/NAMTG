draw_set_valign(fa_middle);

if(currentHeight > -32 && currentHeight < 640)
{
    draw_set_font(fontSETitle);
    captionName = title[section];
    spacePos = string_pos(" ", captionName);
    if(spacePos && !central[section])
    {
        captionLen = string_length(captionName);
        spaceWidth = string_width(string_hash_to_newline("_"));
        leftContent = string_copy(captionName,0, spacePos - 1);
        draw_set_halign(fa_right);
        draw_text(centerX-spaceWidth/2, currentHeight, string_hash_to_newline(leftContent));
        rightContent = string_copy(captionName,spacePos + 1, captionLen - spacePos);
        draw_set_halign(fa_left);
        draw_text(centerX+spaceWidth/2, currentHeight, string_hash_to_newline(rightContent));
    }
    else
    {
        draw_set_halign(fa_center);
        draw_text(centerX, currentHeight, string_hash_to_newline(captionName));
    }  
}
currentHeight += titleGap;
draw_set_halign(fa_center);

