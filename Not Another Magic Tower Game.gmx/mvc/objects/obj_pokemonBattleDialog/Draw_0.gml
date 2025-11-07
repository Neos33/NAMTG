draw_set_color(c_white);
draw_rectangle(__view_get( e__VW.XView, 1 ), __view_get( e__VW.YView, 1 ), __view_get( e__VW.XView, 1 ) + __view_get( e__VW.WView, 1 ), __view_get( e__VW.YView, 1 ) + __view_get( e__VW.HView, 1 ), false);
draw_set_color(c_black);
draw_set_alpha(1);
for(i = 0; i < 3; i += 1)
{
    draw_rectangle(__view_get( e__VW.XView, 1 ) + i, __view_get( e__VW.YView, 1 ) + i, __view_get( e__VW.XView, 1 ) + __view_get( e__VW.WView, 1 ) - i, __view_get( e__VW.YView, 1 ) + __view_get( e__VW.HView, 1 ) - i, true);
}

qLen = ds_list_size(q);
if(qLen > 0)
{
    top = 464 + msgInterval * (4 - qLen);
    if(msgGap > 0)
    {
        top += msgGap;
        msgGap -= 2;
    }
    draw_set_color(c_black);
    draw_set_font(fontPokemonDialog);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
    for(var i = 0; i < qLen; i += 1)
    {
        var fy = top + i * msgInterval;
        var fx = 48;
        if(fy < msgTop)
        {
            draw_set_alpha(RangeClamp((msgTop - fy) / msgInterval, 0, 1));
        }
        else if(fy > msgBottom)
        {
            draw_set_alpha(RangeClamp((fy - msgBottom) / msgInterval, 0, 1));
        }
        else
        {
            draw_set_alpha(1);
        }
        draw_text(fx,fy,string_hash_to_newline(ds_list_find_value(q, i)));
    }
}

draw_reset_color();

