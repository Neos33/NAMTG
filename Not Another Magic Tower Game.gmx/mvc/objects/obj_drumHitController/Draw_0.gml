combo = obj_osuController.combo;
if(combo > 0)
{
   if(combo >= 1000)
   {
      tempCombo = combo;
      draw_sprite_ext(spr_taikoCombo, floor(tempCombo/1000),obj_taikoDrum.x-20, obj_taikoDrum.y,1,1,0,c_white,1);
      c = tempCombo mod 1000;
      tempCombo = c;
      draw_sprite_ext(spr_taikoCombo, floor(tempCombo/100),obj_taikoDrum.x-8, obj_taikoDrum.y,1,1,0,c_white,1);
      c = tempCombo mod 100;
      tempCombo = c;
      draw_sprite_ext(spr_taikoCombo, floor(tempCombo/10),obj_taikoDrum.x+8, obj_taikoDrum.y,1,1,0,c_white,1);
      c = tempCombo mod 10;
      tempCombo = c;
      draw_sprite_ext(spr_taikoCombo, tempCombo,obj_taikoDrum.x+20, obj_taikoDrum.y,1,1,0,c_white,1);
   }
   else if(combo >= 100)
   {
      tempCombo = combo;
      draw_sprite_ext(spr_taikoCombo, floor(tempCombo/100),obj_taikoDrum.x-12, obj_taikoDrum.y,1,1,0,c_white,1);
      c = tempCombo mod 100;
      tempCombo = c;
      draw_sprite_ext(spr_taikoCombo, floor(tempCombo/10),obj_taikoDrum.x, obj_taikoDrum.y,1,1,0,c_white,1);
      c = tempCombo mod 10;
      tempCombo = c;
      draw_sprite_ext(spr_taikoCombo, tempCombo,obj_taikoDrum.x+12, obj_taikoDrum.y,1,1,0,c_white,1);
   }
   else if(combo >= 10)
   {
      tempCombo = combo;
      draw_sprite_ext(spr_taikoCombo, floor(tempCombo/10),obj_taikoDrum.x-8, obj_taikoDrum.y,1,1,0,c_white,1);
      c = tempCombo mod 10;
      tempCombo = c;
      draw_sprite_ext(spr_taikoCombo, tempCombo,obj_taikoDrum.x+8, obj_taikoDrum.y,1,1,0,c_white,1);
   }
   else
   {
      draw_sprite_ext(spr_taikoCombo, combo,obj_taikoDrum.x, obj_taikoDrum.y,1,1,0,c_white,1);
   }
}

