draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0,0,800,608, false);
if(step < 1)
  exit;

draw_set_alpha(1);
draw_sprite(sprite_index,0, x - width / 2 * 32, y - height / 2 * 32);
for(i = 1; i < width - 1; i += 1)
{
    draw_sprite(sprite_index,1, x - (width / 2 - i) * 32, y - height / 2 * 32);
}
draw_sprite(sprite_index,2, x + (width / 2 - 1) * 32, y - height / 2 * 32);

for(var i = 1; i < height - 1; i += 1)
{
    draw_sprite(sprite_index,3, x - width / 2 * 32, y - (height / 2 - i) * 32);
    for(var j = 1; j < width - 1; j += 1)
    {
        draw_sprite(sprite_index,4, x - (width / 2 - j) * 32,  y - (height / 2 - i) * 32);
    }
    draw_sprite(sprite_index,5, x + (width / 2 - 1) * 32, y - (height / 2 - i) * 32);
}

draw_sprite(sprite_index,6, x - width / 2 * 32, y + (height / 2 - 1) * 32);
for(var i = 1; i < width - 1; i += 1)
{
    draw_sprite(sprite_index,7, x - (width / 2 - i) * 32, y + (height / 2 - 1) * 32);
}
draw_sprite(sprite_index,8, x + (width / 2 - 1) * 32, y + (height / 2 - 1) * 32);

if(step < 2)
   exit;
   
draw_sprite(spr_mmm_retry, 0, x -64, y - 56);
if(currentMeter >= 250)
{
    draw_sprite(spr_mmm_bonus, 0, x -64, y + 32);
}
else
{
    draw_sprite_ext(spr_mmm_bonus, 0, x -64, y + 32, 1, 1, 0, c_gray, 0.5);
}
draw_sprite(spr_mmm_exit, 0, x -64, y + 120);

draw_sprite(spr_mmm_arrow, 0, x - 160, y - 48 + 88 * selectedIndex);

if(currentMeter > 250)
{
    draw_sprite(spr_mmm_medal, RangeClamp(floor(currentMeter / 250 - 1), 0, 3), x + 144, y - 144);
    if(!medalEffect)
    {
        medalEffect = true;
    }
}

draw_set_font(fontMMM2);
draw_set_color(dColor);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y - 144, string_hash_to_newline(string(currentMeter)));



draw_reset();

