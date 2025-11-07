baseY = startY;
draw_set_color(c_silver);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
for(var i=0;i<sectionCount;i+=1)
{
    if(baseY > 608)
    {
        break;
    }
    draw_set_font(fontGETitle);
    draw_text(400, baseY, string_hash_to_newline(section[i]));
    baseY += titleGap;
    
    draw_set_font(fontGECredit);
    listSize = ds_list_size(list[i]);
    for(j=0;j<listSize;j+=1)
    {
         draw_text(400, baseY, string_hash_to_newline(ds_list_find_value(list[i],j)));
         baseY += detailGap;
    }
    baseY += sectionGap;
}


draw_set_valign(fa_middle);
draw_set_font(fontGETitle);
draw_text(400,lastWordY,string_hash_to_newline("Thank you for playing!"));



draw_reset();

