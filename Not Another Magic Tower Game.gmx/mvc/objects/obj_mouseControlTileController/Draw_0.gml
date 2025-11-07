
    if(isDraw)
    {
        obj = ds_list_find_value(list, currentIndex);
        item = ds_map_find_value(map, obj);
        draw_sprite_ext(item.spr, 0, sprX, sprY, 1, 1, 0, c_white, 0.5);
    }
    listSize = ds_list_size(list);
    if(listSize > 0)
    {
        for(var i = 0; i < listSize; i += 1)
        {
            obj = ds_list_find_value(list, i);
            item = ds_map_find_value(map, obj);
            
            draw_set_font(fontBasicInfoMini);
            if(i == currentIndex)
            { 
                if(color_change<253 && color_flag==0)
                {
                       color_change+=3;
                       color_flag=0;
                }
                else 
                {
                   color_flag=1;
                }
                if(color_change>84 && color_flag==1)
                {
                   color_change-=3;
                   color_flag=1;
                }
                else
                {
                    color_flag=0;
                }
                    var color=make_color_rgb(226,252,color_change);
                    draw_set_color(c_orange);
            }
            else
            {
                var color=c_white;
                draw_set_color(c_black);
            }
            dir=0
     /*       repeat(listSize)
            {
                xx=(view_xview+100)+lengthdir_x(70,30+dir);
                yy=(view_yview+100)+lengthdir_y(70,30+dir);
               a=draw_sprite_ext(spr_extraBubble,0,xx,yy,1,1,1,color_change,1)
               b=draw_sprite_stretched(item.spr,0,xx,yy,16,16)
                dir+=60;
                }
                */
        
     draw_sprite_stretched(item.spr, 0, __view_get( e__VW.XView, 0 ) + 48 + 50 * i + 4, __view_get( e__VW.YView, 0 ) + 48 + 12, 16,16);
     draw_sprite_ext(spr_extraBubble,0,__view_get( e__VW.XView, 0 ) + 64 + 50 * i, __view_get( e__VW.YView, 0 ) + 64,1.1,1.1,0,color,1);         
            
  draw_set_valign(fa_top);
   draw_text(__view_get( e__VW.XView, 0 ) + 48 + 50 * i + 16, __view_get( e__VW.YView, 0 ) + 48 + 2, string_hash_to_newline("x " + string(item.ammount)));

        }
    }

    
draw_reset();

/* */
/*  */
