draw_set_font(fontFloorInfo);
draw_set_color(c_silver);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(1);
if(room == rExtraFloorBonus)
{
 draw_text(400,48,string_hash_to_newline("Bonus Room"));
}
else
{
     draw_text(400,48,string_hash_to_newline("Side Tower"));
     draw_text(96,80,string_hash_to_newline("Floor"));
     draw_text(96,112,string_hash_to_newline(string(global.floorStageLevel)));
     draw_text(704,80,string_hash_to_newline("Life"));
     draw_text(704,112,string_hash_to_newline(string(global.floorStageLife)));
}


draw_reset();

