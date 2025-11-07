draw_set_font(fontBEInfo);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_alpha(alpha);
draw_text(x,y+32*0,string_hash_to_newline("Achievements * 40 = "+string(40*getAchievementsNum())));
draw_text(x,y+32*1,string_hash_to_newline("Story              "+string(global.koala)));
if(global.totalNow<=floor(global.total/100))
{
 if(!sound_isplaying(sndText))
 {
  sound_loop(sndText);
 }
 draw_text(x,y+80,string_hash_to_newline("TOTAL POINT       "+string(global.totalNow)+string(global.random_number)));
}
else
{
 sound_stop(sndText);
 if(obj_amount_timeline.step < 5)
 {
  obj_amount_timeline.step = 5;
 }
 draw_text(x,y+80,string_hash_to_newline("TOTAL POINT       "+string(global.total)));
 if(!triggered)
 {
  triggered = true;
  alarm[0] = 100;
 }
}


draw_set_alpha(1);

