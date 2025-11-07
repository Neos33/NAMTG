/// @description Unused
/*if(deactivated)
{
if(!initialized1 && index == 4)
{
    initialized = false;
    if(surface_exists(surf1))
    {
        surface_free(surf1);
    }
    if(surface_exists(surf2))
    {
        surface_free(surf2);
    }
    surf1_hindex = 0;
    surf2_hindex = 0;
    if(!surface_exists(surf2))
    {
        surf2_height = 90 * 10;
        surf2 = surface_create(600, surf2_height);
        surface_set_target(surf2);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        for(i = 0; i < 50; i+=1)
        {
            aX = 0;
            aY = 90 * i;
            infoGap = 120;
            draw_set_alpha(1);
            draw_set_color(c_white);
            
            
            if(global.achievements[i])
            {
                draw_sprite_ext(global.achievementSpr[i], 0, aX, aY, 0.375, 0.375, 0, c_white, 1);
                draw_set_font(font16);
                draw_text(aX + infoGap, aY, global.achievementName[i]);
                draw_set_font(fontBasicInfo);
                draw_text_ext(aX + infoGap, aY + 24, global.achievementDescription[i], 12, 568 - infoGap);
            }
            else
            {
                draw_sprite_ext(spr_unknown, 0, aX, aY, 0.375, 0.375, 0, c_white, 1);
                draw_set_font(font16);
                draw_text(aX + infoGap, aY, "???");
                draw_set_font(fontBasicInfo);
                draw_text(aX + infoGap, aY + 24, "???");
            }
        }
        surface_reset_target();
        initialized1 = true;
    }
}

if(!initialized && index == 1)
{
    initialized1 = false;
    if(surface_exists(surf1))
    {
        surface_free(surf1);
    }
    if(surface_exists(surf2))
    {
        surface_free(surf2);
    }
    surf1_hindex = 0;
    surf2_hindex = 0;
    if(count > 0 && !surface_exists(surf1))
    {
        surf1_height = 80 * count;
        surf1 = surface_create(600, surf1_height);
        surface_set_target(surf1);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        for(i = 0; i < count; i+=1)
        {
            beginX = 0;
            beginY = 80 * i;
            statusGap = 352;
            draw_set_alpha(1);
            draw_set_color(c_white);
            draw_set_font(font_monsterinfo);
            draw_rectangle(beginX,beginY,592,beginY + 72, true);
            draw_text(beginX + 16, beginY + 6, name[i]);
            if(isBoss[i])
            {
                draw_sprite_ext(spr[i], img_index, beginX + 24, beginY + 20, .75, .75, 0, c_white, 1);
            }
            else
            {
                draw_sprite(spr[i], img_index, beginX + 32, beginY + 20);
            }
            draw_text(beginX + statusGap, beginY + 6, "Status :")
           
            draw_set_font(font12);
            draw_text(beginX + 88, beginY + 20, "Attack :");
            draw_text(beginX + 168, beginY + 20, atk[i]);
            draw_text(beginX + 216, beginY + 20, "Defense :");
            draw_text(beginX + 296, beginY + 20, def[i]);
            draw_text(beginX + 88, beginY + 44, "HP :");
            for(l = 0; l < floor(hp[i] / 100); l+=1)
            {
                draw_sprite_ext(spr_hp,0,beginX + 128 + 24 * l, beginY + 38, .75, .75,0,c_white,1);
            }
            
            for(k = 0; k < floor((hp[i] mod 100) / 10); k+=1)
            {
                draw_sprite_ext(spr_heart10,0,beginX + 128 + floor(hp[i] / 100) * 24 + 20 * k, beginY + 48, 1, 1,0,c_white,1);
            }
            for(j = 0; j < (hp[i] mod 10); j+=1)
            {
                draw_sprite_ext(spr_smallHeart,0,beginX + 128 + floor(hp[i] / 100) * 24 + 20 * floor((hp[i] mod 100) / 10) + 14 * j, beginY + 52, 1, 1,0,c_white,1);
            }
            draw_set_color(make_color_rgb(0,56,0));
            if(status[i] == 0)
            {
                draw_set_alpha(1);
                draw_text(beginX + statusGap + 8, beginY + 44, "Safe!")
            }
            else
            {
                draw_set_alpha(.25);
            }   
            draw_circle(beginX + statusGap + 16, beginY + 32, 8, false);
        
            draw_set_color(c_yellow);
            if(status[i] == 1)
            {
                draw_set_alpha(1);
                draw_text(beginX + statusGap + 8, beginY + 44, "Battle!")
            }
            else
            {
                draw_set_alpha(.25);
            }   
            draw_circle(beginX + statusGap + 48, beginY + 32, 8, false);
        
            draw_set_color(c_red);
            if(status[i] == 2)
            {
                draw_set_alpha(1);
                draw_text(beginX + statusGap + 8, beginY + 44, "Invincible!")
            }
            else
            {
                draw_set_alpha(.25);
            }   
            draw_circle(beginX + statusGap + 80, beginY + 32, 8, false);
            
        }
        surface_reset_target();
        initialized = true;
    }
}
}
else
{
    if(surf1 != 0 && surface_exists(surf1))
    {
        surface_free(surf1);
    }
    if(surf2 != 0 && surface_exists(surf2))
    {
        surface_free(surf2);
    }
    initialized = false;
    initialized1 = false;
}

/* */
if(deactivated)
{
    xx = __view_get( e__VW.XView, 0 );
    yy = __view_get( e__VW.YView, 0 );
    draw_sprite(pauseImg,0,0,0);
    draw_set_color(make_color_rgb(0,128,0));
    draw_set_alpha(.8);
    draw_rectangle(0,0, xx + 800, yy + 608, false);

    draw_set_color(c_white);
    draw_set_alpha(.8);
    draw_roundrect(xx + 8, yy + 8, xx + 184, yy + 360, true);

    draw_arrow(xx + 15, yy + 32 + 48 * index + 12, xx +  27, yy + 32 + 48 * index + 12, 20);
    draw_set_font(font_leftmenu);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text(xx + 32,yy + 32, string_hash_to_newline("Basics"));
    draw_text(xx + 32,yy + 32 + 48 * 1, string_hash_to_newline("Monsters"));
    draw_text(xx + 32,yy + 32 + 48 * 2, string_hash_to_newline("Items"));
    draw_text(xx + 32,yy + 32 + 48 * 3, string_hash_to_newline("Controls"));
    draw_text(xx + 32,yy + 32 + 48 * 4, string_hash_to_newline("Achievements"));
    draw_text(xx + 32,yy + 32 + 48 * 5, string_hash_to_newline("BackUps"));
    draw_text(xx + 32,yy + 32 + 48 * 6, string_hash_to_newline("I Wanna Cheat"));
    draw_line(xx + 192, yy + 0, xx + 192,yy + 608);
    
    py = 410;
    draw_text(xx + 16, yy + py, string_hash_to_newline("Death :"))
    draw_text(xx + 16, yy + py + 80, string_hash_to_newline("Total Time :"))
    draw_set_halign(fa_right)
    draw_text(xx + 176, yy + py + 24, string_hash_to_newline(global.death[global.savenum]));
    draw_text(xx + 176, yy + py + 80 + 24, string_hash_to_newline(string(global.hour[global.savenum])+":" +string(global.muni[global.savenum])+":"+string(global.sec[global.savenum])+"."+string(round(global.msec[global.savenum]))));
    draw_set_halign(fa_left);
    
    if(index == 0) //basic info
    {
        with(obj_menuObjPrototype)
        {
            instance_destroy();
        }
        lvlRequired = global.levelRequired[global.currentLevel];
        currentExp = global.levelExp;
        draw_set_font(font16);
        if(global.currentLevel == 11)
        {
            draw_text(xx + 224, yy + 24, string_hash_to_newline("Level MAX"));
            draw_text(xx + 224, yy + 96, string_hash_to_newline("Next Level Bonus:     N/A"));
        }
        else
        {
            draw_text(xx + 224, yy + 24, string_hash_to_newline("Level " + string(global.currentLevel)));
            draw_text(xx + 224, yy + 96, string_hash_to_newline("Next Level Bonus:"));
        }
        
        draw_sprite(spr_expBar, 0, xx + 224, yy + 48);
        draw_sprite_part_ext(spr_expBar,1, 0,0, currentExp * 400 / lvlRequired, 37,xx + 224, yy + 48, 1, 1, c_white, 1);
        draw_text(xx + 664, yy + 56, string_hash_to_newline(string(currentExp) + "/" + string(lvlRequired)));
        
        bonusGap = 224 + 224;
        if(h_bns[global.currentLevel + 1] > 0)
        {           
            draw_sprite_ext(spr_hpUp1, 0, xx + bonusGap, yy + 94,  0.8, 0.8, 0, c_white, 0.8);
            draw_text(xx + bonusGap + 32, yy + 96, string_hash_to_newline("+" + string(h_bns[global.currentLevel + 1])));
            bonusGap += 96;
        }
        if(a_bns[global.currentLevel + 1] > 0)
        {
            draw_sprite_ext(spr_attUp1, 0, xx + bonusGap, yy + 94,  0.8, 0.8, 0, c_white, 0.8);
            draw_text(xx + bonusGap + 32, yy + 96, string_hash_to_newline("+" + string(a_bns[global.currentLevel + 1])));
            bonusGap += 96;
        }
        if(d_bns[global.currentLevel + 1] > 0)
        {
            draw_sprite_ext(spr_defUp1, 0, xx + bonusGap, yy + 94,  0.8, 0.8, 0, c_white, 0.8);
            draw_text(xx + bonusGap + 32, yy + 96, string_hash_to_newline("+" + string(d_bns[global.currentLevel + 1])));         
            bonusGap += 96;
        }
        if(k1_bns[global.currentLevel + 1] > 0)
        {
            draw_sprite_ext(spr_yellowKey, 0, xx + bonusGap, yy + 94,  0.8, 0.8, 0, c_white, 0.8);
            draw_text(xx + bonusGap + 32, yy + 96, string_hash_to_newline("+" + string(k1_bns[global.currentLevel + 1])));         
            bonusGap += 96;
        }
        if(k2_bns[global.currentLevel + 1] > 0)
        {
            draw_sprite_ext(spr_blueKey, 0, xx + bonusGap, yy + 94,  0.8, 0.8, 0, c_white, 0.8);
            draw_text(xx + bonusGap + 32, yy + 96, string_hash_to_newline("+" + string(k2_bns[global.currentLevel + 1])));         
            bonusGap += 96;
        }
        if(k3_bns[global.currentLevel + 1] > 0)
        {
            draw_sprite_ext(spr_redKey, 0, xx + bonusGap, yy + 94,  0.8, 0.8, 0, c_white, 0.8);
            draw_text(xx + bonusGap + 32, yy + 96, string_hash_to_newline("+" + string(k3_bns[global.currentLevel + 1])));         
            bonusGap += 96;
        }
        if(k4_bns[global.currentLevel + 1] > 0)
        {
            draw_sprite_ext(spr_greenKey, 0, xx + bonusGap, yy + 94,  0.8, 0.8, 0, c_white, 0.8);
            draw_text(xx + bonusGap + 32, yy + 96, string_hash_to_newline("+" + string(k4_bns[global.currentLevel + 1])));         
            bonusGap += 96;
        }
        if(k5_bns[global.currentLevel + 1] > 0)
        {
            draw_sprite_ext(spr_ironKey, 0, xx + bonusGap, yy + 94,  0.8, 0.8, 0, c_white, 0.8);
            draw_text(xx + bonusGap + 32, yy + 96, string_hash_to_newline("+" + string(k5_bns[global.currentLevel + 1])));         
            bonusGap += 96;
        }
        sx0 = 450;
        sy0 = 224;
        /*for(k = 0; k < floor(global.hp / 10); k+=1)
            {
                draw_sprite_ext(spr_heart10,0,xx + 250 + 20 * k, yy + sy0 - 50, 1, 1,0,c_white,1);
            }
            for(j = 0; j < (global.hp mod 10); j+=1)
            {
                draw_sprite_ext(spr_smallHeart,0,xx + 250 + 20 * floor(global.hp / 10) + 14 * j, yy + sy0 - 50 + 4, 1, 1,0,c_white,1);
            }*/
        if(global.hp >= 233)
        {
            draw_sprite_ext(spr_smallHeart,0,xx + 250, yy + sy0 - 50 + 4, 1, 1,0,c_white,1);
            draw_set_alpha(1);
            draw_set_color(c_white);
            draw_set_font(fontBasicInfoMini);
            draw_set_valign(fa_bottom);
            draw_set_halign(fa_left);
            draw_text(xx + 250 + 14, yy + sy0 - 50 + 4 + 10, string_hash_to_newline(" x " +string(global.hp)));
        } 
        else
        {
            for(var l = 0; l < floor(global.hp / 100); l+=1)
            {
                draw_sprite_ext(spr_hp,0,xx + 250 + 24 * l, yy + sy0 - 60, .75, .75,0,c_white,1);
            }
            
            for(var k = 0; k < floor((global.hp mod 100) / 10); k+=1)
            {
                draw_sprite_ext(spr_heart10,0,xx + 250 + floor(global.hp / 100) * 24 + 20 * k, yy + sy0 - 50, 1, 1,0,c_white,1);
            }
            for(var j = 0; j < (global.hp mod 10); j+=1)
            {
                draw_sprite_ext(spr_smallHeart,0,xx + 250 + floor(global.hp / 100) * 24 + 20 * floor((global.hp mod 100) / 10) + 14 * j, yy + sy0 - 50 + 4, 1, 1,0,c_white,1);
            }
        }
        draw_sprite_ext(sprPlayerIdle, img_index, xx + 350, yy + sy0 + 50, 5,5, 0, c_white, 1);
        
        if(global.clearItem[0])
        {
            draw_sprite(spr_specialkey_yellow,0, xx + 350 - 102, yy + sy0 + 50 - 48);
        }
        if(global.clearItem[1])
        {
            draw_sprite(spr_specialkey_red,0, xx + 350 - 102, yy + sy0 + 50);
        }
        if(global.clearItem[2])
        {
            draw_sprite(spr_specialkey_blue,0, xx + 350 + 60, yy + sy0 + 50 - 48);
        }
        if(global.clearItem[3])
        {
            draw_sprite(spr_specialkey_green,0, xx + 350 + 60, yy + sy0 + 50);
        }
        if(global.clearItem[4])
        {
            draw_sprite(spr_specialKey_black,0, xx + 350 - 140, yy + sy0 + 50 - 24);
        }
        if(global.clearItem[5])
        {
            draw_sprite(spr_specialKey_white,0, xx + 350 + 98, yy + sy0 + 50 - 24);
        }
        draw_set_font(font24);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_text(xx + sx0 + 48, yy + sy0 - 8, string_hash_to_newline("Attack : "))
        draw_text(xx + sx0 + 48 + 160, yy + sy0 - 8, string_hash_to_newline(global.attack));
        draw_text(xx + sx0 + 48, yy + sy0 + 64  - 8, string_hash_to_newline("Defense : "))
        draw_text(xx + sx0 + 48 + 160, yy + sy0 + 64 - 8, string_hash_to_newline(global.defense));
        draw_set_color(c_silver);
        for(var i = 0; i < 3; i += 1)
        {
            draw_rectangle(xx + sx0 + 48 + 36 * i, yy + sy0 + 120, xx + sx0 + 48 + 36 * i + 32, yy + sy0 + 120 + 32, true);
            if(global.special[i + 11])
            {
                draw_sprite(sSpr[i + 11], 0, xx + sx0 + 48 + 36 * i, yy + sy0 + 120);
            }
        }
        
        for(var i = 0; i < 4; i += 1)
        {
            draw_rectangle(xx + sx0 + 168 + 36 * i, yy + sy0 + 120, xx + sx0 + 168 + 36 * i + 32, yy + sy0 + 120 + 32, true);
            if(global.clearItem[i + 6])
            {
                draw_sprite(spr_ultimateEnergy, i, xx + sx0 + 168 + 36 * i, yy + sy0 + 120);
            }
        }
        //draw_text(sx0, sy0 + 64 * 2, "HP : ")
        //draw_text(sx0 + 160, sy0 + 64 * 2, global.hp);
        draw_set_color(c_silver);
        for(var i = 0; i<3; i+=1)
        {
            draw_rectangle(xx + 240 + 0 + 72 * i, yy + sy0 + 120, xx + 240 + 0 + 72 * i + 32, yy + sy0 + 120 + 32, true);
            draw_rectangle(xx + 240 + 0 + 72 * i + 36, yy + sy0 + 120, xx + 240 + 0 + 72 * i + 32 + 36, yy + sy0 + 120 + 32, true);
            if(global.swords[i])
            {
                draw_sprite(swordsSpr[i], 0, xx + 240 + 0 + 72 * i, yy + sy0 + 120);
            }
            if(global.shields[i])
            {
                draw_sprite(sheildsSpr[i], 0, xx + 240 + 0 + 36 + 72 * i, yy + sy0 + 120);
            }
            
            
        }
        
        draw_set_font(font12Bold);
        draw_set_color(c_white);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_text(xx + 224, yy + sy0 + 192, string_hash_to_newline("Monsters Killed :"));        
        draw_text(xx + 224, yy + sy0 + 192 + 36, string_hash_to_newline("Keys Get :"));
        draw_text(xx + 224, yy + sy0 + 192 + 36 * 2, string_hash_to_newline("Keys Used :"));
        
        draw_text(xx + 224 + 270, yy + sy0 + 192, string_hash_to_newline("Story"));
        draw_text(xx + 224 + 270, yy + sy0 + 192 + 36, string_hash_to_newline("Achievements :"));
        draw_text(xx + 224 + 270, yy + sy0 + 192 + 36 * 2, string_hash_to_newline("Specials :"));
        draw_text(xx + 224 + 270, yy + sy0 + 192 + 36 * 3, string_hash_to_newline("Mini Games :"));
        draw_text(xx + 224 + 270, yy + sy0 + 192 + 36 * 4, string_hash_to_newline("Challenges :"));
        
        draw_set_halign(fa_right);
        draw_text(xx + 224 + 220, yy + sy0 + 192, string_hash_to_newline(string(global.TotalKills)));        
        draw_text(xx + 224 + 220, yy + sy0 + 192 + 36, string_hash_to_newline(string(global.TotalKeysGet)));
        draw_text(xx + 224 + 220, yy + sy0 + 192 + 36 * 2, string_hash_to_newline(string(global.TotalKeysUsed)));
        
        draw_text(xx + 224 + 270 + 280, yy + sy0 + 192, string_hash_to_newline(GetPercentage(storyPer)));
        draw_text(xx + 224 + 270 + 280, yy + sy0 + 192 + 36, string_hash_to_newline(GetPercentage(aPer)));
        draw_text(xx + 224 + 270 + 280, yy + sy0 + 192 + 36 * 2, string_hash_to_newline(GetPercentage(sPer)));
        draw_text(xx + 224 + 270 + 280, yy + sy0 + 192 + 36 * 3, string_hash_to_newline(GetPercentage(oPer)));
        draw_text(xx + 224 + 270 + 280, yy + sy0 + 192 + 36 * 4, string_hash_to_newline(GetPercentage(cPer)));
        
                
        for(i = 0; i < 4; i += 1)
        {
            if(global.clearItem[10 + i])
            {
                sprWidth = sprite_get_width(colorKey[i]);
                sprHeight = sprite_get_height(colorKey[i]);
                sprScale = 0.5;
                draw_sprite_part_ext(colorKey[i],0,0,0,sprWidth, 72,xx + 224 + 16 + 64 * i - sprWidth*sprScale/2, yy + sy0 + 192 + 36 * 3 - 4, sprScale, sprScale, c_white, 1);
                //draw_sprite_ext(colorKey[i],0, xx + 350 + (i - 1.5) * 6, yy + sy0 + 60, 0.1, 0.1, -30, c_white, 1);
            }
        }
        
        /*draw_set_alpha(0.5);
        draw_set_color(c_red);
        draw_roundrect(xx + 224 + 270 + 140 - 2, yy + sy0 + 192 + 2, xx + 224 + 270 + 140 + 70 * mPer + 2, yy + sy0 + 192 + 18, false);
        draw_set_color(c_blue);
        draw_roundrect(xx + 224 + 270 + 140 - 2, yy + sy0 + 192 + 36 * 1 + 2, xx + 224 + 270 + 140 + 70 * aPer + 2, yy + sy0 + 192 + 36 * 1 + 18, false);
        draw_set_color(c_purple);
        draw_roundrect(xx + 224 + 270 + 140 - 2, yy + sy0 + 192 + 36 * 2 + 2, xx + 224 + 270 + 140 + 70 * sPer + 2, yy + sy0 + 192 + 36 * 2 + 18, false);
        draw_set_color(c_silver);
        draw_roundrect(xx + 224 + 270 + 140 - 2, yy + sy0 + 192 + 36 * 3 + 2, xx + 224 + 270 + 140 + 70 * oPer + 2, yy + sy0 + 192 + 36 * 3 + 18, false);
        */
        draw_set_alpha(1);
        draw_set_color(c_red);
        draw_rectangle(xx + 224 + 270 + 136, yy + sy0 + 192 + 8, xx + 224 + 270 + 136 + 70 * mPer, yy + sy0 + 192 + 12, false);
        draw_set_color(c_blue);
        draw_rectangle(xx + 224 + 270 + 136, yy + sy0 + 192 + 36 * 1 + 8, xx + 224 + 270 + 136 + 70 * aPer, yy + sy0 + 192 + 36 * 1 + 12, false);
        draw_set_color(c_purple);
        draw_rectangle(xx + 224 + 270 + 136, yy + sy0 + 192 + 36 * 2 + 8, xx + 224 + 270 + 136 + 70 * sPer, yy + sy0 + 192 + 36 * 2 + 12, false);
        draw_set_color(c_yellow);
        draw_rectangle(xx + 224 + 270 + 136, yy + sy0 + 192 + 36 * 3 + 8, xx + 224 + 270 + 136 + 70 * oPer, yy + sy0 + 192 + 36 * 3 + 12, false);
        draw_set_color(c_olive);
        draw_rectangle(xx + 224 + 270 + 136, yy + sy0 + 192 + 36 * 4 + 8, xx + 224 + 270 + 136 + 70 * cPer, yy + sy0 + 192 + 36 * 4 + 12, false);
    }
    else if(index == 1) //monsters
    {
        with(obj_menuObjPrototype)
        {
            instance_destroy();
        }
        /*if(initialized && surface_exists(surf1))
        {
            draw_set_alpha(1);
            draw_surface_part(surf1,0, surf1_hindex, 600, min(surf1_height - surf1_index, 592), 200, 8);
        }*/
        sx = xx + 200;
        sy = yy + 8;
        pageCount = 6;
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        if(mIndex == 0)
        {
            ppAvailable = false;
        }
        else
        {
            ppAvailable = true;
        }
        maxPage = ceil(count / pageCount) - 1;
        if(maxPage > mIndex)
        {
            pnAvailable = true;
        }
        else
        {
            pnAvailable = false;
        }
        sCount = count - pageCount * mIndex;
        if(sCount > pageCount)
        {
            sCount = pageCount;
        }
        if(maxPage > 0)
        {
            if(ppAvailable)
            {
                draw_sprite_ext(spr_previousPage, 0, xx + ppx, yy + pageY,1,1,0,c_white,0.7);
            }
            else
            {
                draw_sprite_ext(spr_previousPage, 1, xx + ppx,yy + pageY,1,1,0,c_white,0.7);
            }
        
            if(pnAvailable)
            {
                draw_sprite_ext(spr_nextPage, 0, xx + pnx,yy + pageY,1,1,0,c_white,0.7);
            }
            else
            {
                draw_sprite_ext(spr_nextPage, 1, xx + pnx,yy + pageY,1,1,0,c_white,0.7);
            }
        }
        for(var i = pageCount * mIndex; i < (pageCount * mIndex + sCount); i+=1)
        {
            beginX = 0 + sx;
            beginY = 90 * (i - pageCount * mIndex) + sy;
            statusGap = 448;
            draw_set_alpha(1);
            draw_set_color(c_white);
            draw_set_font(font_monsterinfo);
            draw_rectangle(beginX,beginY,592 + sx,beginY + 72, true);
            draw_text(beginX + 16, beginY + 6, string_hash_to_newline(name[i]));
            if(isBoss[i])
            {
                draw_sprite_stretched_ext(spr[i], img_index, beginX + 24, beginY + 20, 32, 32, c_white, 1);
            }
            else
            {
                draw_sprite(spr[i], img_index, beginX + 32, beginY + 20);
            }
            draw_text(beginX + statusGap, beginY + 6, string_hash_to_newline("Status :"))
           
            draw_set_font(font12);
            draw_text(beginX + 88, beginY + 20, string_hash_to_newline("Attack :"));
            draw_text(beginX + 168, beginY + 20, string_hash_to_newline(atk[i]));
            draw_text(beginX + 216, beginY + 20, string_hash_to_newline("Defense :"));
            draw_text(beginX + 296, beginY + 20, string_hash_to_newline(def[i]));
            draw_text(beginX + 344, beginY + 20, string_hash_to_newline("Exp :"));
            draw_text(beginX + 394, beginY + 20, string_hash_to_newline(ex[i]));
            if(global.special[2])
            {
                draw_set_font(fontBasicInfoMini);    
                if(ex[i] < 100)
                {
                    draw_text(beginX + 394 + 18, beginY + 10, string_hash_to_newline("+" + string(floor(ex[i] * 0.5))))
                }
                else
                {
                    draw_text(beginX + 394 + 26, beginY + 10, string_hash_to_newline("+" + string(floor(ex[i] * 0.5))))
                }
            }
            draw_set_color(c_white);
            draw_set_font(font_monsterinfo);
            draw_text(beginX + 88, beginY + 44, string_hash_to_newline("HP :"));
            if(hp[i] < 233)
            {
                for(var l = 0; l < floor(hp[i] / 100); l+=1)
                {
                    draw_sprite_ext(spr_hp,0,beginX + 128 + 24 * l, beginY + 38, .75, .75,0,c_white,1);
                }
                
                for(var k = 0; k < floor((hp[i] mod 100) / 10); k+=1)
                {
                    draw_sprite_ext(spr_heart10,0,beginX + 128 + floor(hp[i] / 100) * 24 + 20 * k, beginY + 48, 1, 1,0,c_white,1);
                }
                for(var j = 0; j < (hp[i] mod 10); j+=1)
                {
                    draw_sprite_ext(spr_smallHeart,0,beginX + 128 + floor(hp[i] / 100) * 24 + 20 * floor((hp[i] mod 100) / 10) + 14 * j, beginY + 52, 1, 1,0,c_white,1);
                }
            }
            else
            {
                draw_sprite_ext(spr_smallHeart,0,beginX + 128, beginY + 52, 1, 1,0,c_white,1);
                draw_text(beginX + 128 + 14, beginY + 40, string_hash_to_newline("x " + string(hp[i])));
            }
            draw_set_color(make_color_rgb(0,56,0));
            if(status[i] == 0)
            {
                draw_set_alpha(1);
                draw_text(beginX + statusGap + 8, beginY + 44, string_hash_to_newline("Safe!"))
            }
            else
            {
                draw_set_alpha(.25);
            }   
            draw_circle(beginX + statusGap + 16, beginY + 32, 8, false);
        
            draw_set_color(c_yellow);
            if(status[i] == 1)
            {
                draw_set_alpha(1);
                draw_text(beginX + statusGap + 8, beginY + 44, string_hash_to_newline("Battle!"))
            }
            else
            {
                draw_set_alpha(.25);
            }   
            draw_circle(beginX + statusGap + 48, beginY + 32, 8, false);
        
            draw_set_color(c_red);
            if(status[i] == 2)
            {
                draw_set_alpha(1);
                draw_text(beginX + statusGap + 8, beginY + 44, string_hash_to_newline("Invincible!"))
            }
            else
            {
                draw_set_alpha(.25);
            }   
            draw_circle(beginX + statusGap + 80, beginY + 32, 8, false);
            
        }
    }
    else if(index == 2) //items
    {
        with(obj_menuObjPrototype)
        {
            instance_destroy();
        }
        spDes = "";
        draw_roundrect(xx + 200, yy + 32, xx + 792, yy + 232, true);
        draw_roundrect(xx + 200, yy + 240 + 32, xx + 792, yy + 240 + 130 + 48, true);
        //draw_roundrect(200, 240 + 32, 792, 240 + 150, true);
        draw_set_halign(fa_left);
        draw_set_valign(fa_bottom);
        draw_text(xx + 208,yy + 30, string_hash_to_newline("Consumables"));
        draw_text(xx + 208,yy + 240 + 30, string_hash_to_newline("Specials"));
        draw_text(xx + 208,yy + 432 + 32,string_hash_to_newline("Description:"));
        draw_set_valign(fa_top);
        draw_set_font(font_leftmenu)
        px0 = xx + 232;
        py0 = yy + 48;
        iCount1 = 0;
        if(global.yellowKeyNum > 0)
        {
            draw_sprite(spr_yellowKey, 0, px0 + 200 * (iCount1 mod 3), py0 + 64 * floor(iCount1 / 3));
            draw_text(px0 + 200 * (iCount1 mod 3) + 40, py0 + 64 * floor(iCount1 / 3) + 4, string_hash_to_newline("X " + string(global.yellowKeyNum)));
            iCount1 += 1;
        }
        
        if(global.blueKeyNum > 0)
        {
            draw_sprite(spr_blueKey, 0, px0 + 200 * (iCount1 mod 3), py0 + 64 * floor(iCount1 / 3));
            draw_text(px0 + 200 * (iCount1 mod 3) + 40, py0 + 64 * floor(iCount1 / 3) + 4, string_hash_to_newline("X " + string(global.blueKeyNum)));
            iCount1 += 1;
        }
        
        if(global.redKeyNum > 0)
        {
            draw_sprite(spr_redKey, 0, px0 + 200 * (iCount1 mod 3), py0 + 64 * floor(iCount1 / 3));
            draw_text(px0 + 200 * (iCount1 mod 3) + 40, py0 + 64 * floor(iCount1 / 3) + 4, string_hash_to_newline("X " + string(global.redKeyNum)));
            iCount1 += 1;
        }
        
        if(global.greenKeyNum > 0)
        {
            draw_sprite(spr_greenKey, 0, px0 + 200 * (iCount1 mod 3), py0 + 64 * floor(iCount1 / 3));
            draw_text(px0 + 200 * (iCount1 mod 3) + 40, py0 + 64 * floor(iCount1 / 3) + 4, string_hash_to_newline("X " + string(global.greenKeyNum)));
            iCount1 += 1;
        }
        
        if(global.ironKeyNum > 0)
        {
            draw_sprite(spr_ironKey, 0, px0 + 200 * (iCount1 mod 3), py0 + 64 * floor(iCount1 / 3));
            draw_text(px0 + 200 * (iCount1 mod 3) + 40, py0 + 64 * floor(iCount1 / 3) + 4, string_hash_to_newline("X " + string(global.ironKeyNum)));
            iCount1 += 1;
        }
        
        if(global.centralWingNum > 0)
        {
            draw_sprite(spr_centerWing, 0, px0 + 200 * (iCount1 mod 3), py0 + 64 * floor(iCount1 / 3));
            draw_text(px0 + 200 * (iCount1 mod 3) + 40, py0 + 64 * floor(iCount1 / 3) + 4, string_hash_to_newline("X " + string(global.centralWingNum)));
            iCount1 += 1;
        }
        
        if(global.upstairsWingNum > 0)
        {
            draw_sprite(spr_upstairsWing, 0, px0 + 200 * (iCount1 mod 3), py0 + 64 * floor(iCount1 / 3));
            draw_text(px0 + 200 * (iCount1 mod 3) + 40, py0 + 64 * floor(iCount1 / 3) + 4, string_hash_to_newline("X " + string(global.upstairsWingNum)));
            iCount1 += 1;
        }
        
        if(global.downstairsWingNum > 0)
        {
            draw_sprite(spr_downstairsWing, 0, px0 + 200 * (iCount1 mod 3), py0 + 64 * floor(iCount1 / 3));
            draw_text(px0 + 200 * (iCount1 mod 3) + 40, py0 + 64 * floor(iCount1 / 3) + 4, string_hash_to_newline("X " + string(global.downstairsWingNum)));
            iCount1 += 1;
        }
        
        if(global.dynamiteNum > 0)
        {
            draw_sprite(spr_dynamite, 0, px0 + 200 * (iCount1 mod 3), py0 + 64 * floor(iCount1 / 3));
            draw_text(px0 + 200 * (iCount1 mod 3) + 40, py0 + 64 * floor(iCount1 / 3) + 4, string_hash_to_newline("X " + string(global.dynamiteNum)));
            iCount1 += 1;
        }
        
        for(var i = 0; i < maxSpecial; i += 1)
        {
            if(i > 10)
            {
                tempInd = i + 3;
            }
            else
            {
                tempInd = i;
            }
            if(global.special[tempInd])
            {
                draw_sprite_ext(sSpr[tempInd], 0, xx + 240 + 48 * (tempInd mod 14), yy + 304 + floor(tempInd/11) * 48, 1, 1, 0, c_white, 0.8);
            }
            else
            {
                draw_sprite_ext(spr_specialUnknown, 0, xx + 240 + 48 * (tempInd mod 14), yy + 304 + floor(tempInd/11) * 48, 1, 1, 0, c_white, 0.8);
            }
        }
        
        if(specialSelection < 11)
        {
            tempInd = specialSelection;
        }
        else
        {
            tempInd = specialSelection + 3;
        }
        if(global.special[tempInd])
        {
            spDes = description[tempInd];
        }
        else
        {
            spDes = "???";
        }
        
        draw_set_font(font12);
        if(spDes != "")
        {
            draw_text_ext(xx + 208, yy + 444 + 32, string_hash_to_newline(spDes), 32, 600 - 16);
        }
        
        draw_set_color(make_color_rgb(255,201,14));
        draw_rectangle(xx + 240 + 48 * (specialSelection mod 11), yy + 304 + floor(specialSelection/11) * 48, xx + 240 + 48 * (specialSelection mod 11) + 32, yy + 304 + 32 + floor(specialSelection/11) * 48, true);
        draw_rectangle(xx + 240 + 48 * (specialSelection mod 11) - 1, yy + 304 - 1 + floor(specialSelection/11) * 48, xx + 240 + 48 * (specialSelection mod 11) + 32 + 1, yy + 304 + 32 + 1 + floor(specialSelection/11) * 48, true);
    }
    else if(index == 3) //controls
    {
        draw_set_color(c_white);
        draw_roundrect(xx + 216, yy + 40, xx + 792, yy + 80 + bLineIndent * 3 - 16, true);
        draw_roundrect(xx + 216, yy + 88 + bLineIndent * 3 + 24, xx + 792, yy + 88 - 16 + bLineIndent * 7 - 24 , true);
    
        draw_set_halign(fa_left);
        draw_set_valign(fa_bottom);
        
        draw_set_font(fontBasicInfo);
        draw_text(xx + 216, yy + 40 - 4, string_hash_to_newline("Common Settings:"));
        draw_text(xx + 216, yy + 88 + bLineIndent * 3 + 24 - 4, string_hash_to_newline("Special Settings:"));
        
        //draw_text(xx + 216, yy + 96 + bLineIndent * 6 + 12, "Door:");
        //draw_text(496, yy + 96 + bLineIndent * 6 + 12, "Dynamite:");
        
        draw_set_font(fontButton);               
        
        bColX1 = xx + 240;
        bY1 = yy + 80;
        bXGap = 192;
        bYGap = -12;
        bLineIndent = 80;
        
        draw_text(bColX1, bY1 + bYGap, string_hash_to_newline("Pause:"));
        draw_text(bColX1 + bXGap, bY1 + bYGap, string_hash_to_newline("Up:"));
        draw_text(bColX1 + bXGap * 2, bY1 + bYGap, string_hash_to_newline("Skip:"));
        
        draw_text(bColX1, bY1 + bYGap + bLineIndent, string_hash_to_newline("Left:"));
        draw_text(bColX1 + bXGap, bY1 + bYGap + bLineIndent, string_hash_to_newline("Down:"));
        draw_text(bColX1 + bXGap * 2, bY1 + bYGap + bLineIndent, string_hash_to_newline("Right:"));
        
        draw_text(bColX1, bY1 + bYGap + bLineIndent * 2, string_hash_to_newline("Jump:"));
        draw_text(bColX1 + bXGap, bY1 + bYGap + bLineIndent * 2, string_hash_to_newline("Shoot:"));
        draw_text(bColX1 + bXGap * 2, bY1 + bYGap + bLineIndent * 2, string_hash_to_newline("Restart:"));
        
        draw_text(bColX1, bY1 + bYGap + bLineIndent * 4, string_hash_to_newline("Menu:"));
        draw_text(bColX1 + bXGap, bY1 + bYGap + bLineIndent * 4, string_hash_to_newline("Transmission:"));
        draw_text(bColX1 + bXGap * 2, bY1 + bYGap + bLineIndent * 4, string_hash_to_newline("Central Flying Mark:"));
        
        draw_text(bColX1, bY1 + bYGap + bLineIndent * 5, string_hash_to_newline("Upstairs Wing:"));
        draw_text(bColX1 + bXGap, bY1 + bYGap + bLineIndent * 5, string_hash_to_newline("Downstairs Wing:"));
        draw_text(bColX1 + bXGap * 2, bY1 + bYGap + bLineIndent * 5, string_hash_to_newline("Central Flying Wing:"));
    
        draw_text(bColX1, bY1 + bYGap + bLineIndent * 6, string_hash_to_newline("Door:"));
        draw_text(bColX1 + bXGap, bY1 + bYGap + bLineIndent * 6, string_hash_to_newline("Dynamite:"));
        draw_text(bColX1 + bXGap * 2, bY1 + bYGap + bLineIndent * 6, string_hash_to_newline("Space Mark:"));

        
        if(!instance_exists(obj_button))
        {
        button1 = instance_create(bColX1, bY1, obj_button);
        button1.type = "Pause";
        button1.key = global.pausebutton;
        button2 = instance_create(bColX1 + bXGap, bY1, obj_button);
        button2.type = "Up";
        button2.key = global.upbutton;
        button3 = instance_create(bColX1 + bXGap * 2, bY1, obj_button);
        button3.type = "Skip";
        button3.key = global.skipbutton;
        
        button4 = instance_create(bColX1, bY1 + bLineIndent, obj_button);
        button4.type = "Left";
        button4.key = global.leftbutton;
        button5 = instance_create(bColX1 + bXGap, bY1 + bLineIndent, obj_button);
        button5.type = "Down";
        button5.key = global.downbutton;
        button6 = instance_create(bColX1 + bXGap * 2, bY1 + bLineIndent, obj_button);
        button6.type = "Right";
        button6.key = global.rightbutton;
        
        button7 = instance_create(bColX1, bY1 + bLineIndent * 2, obj_button);
        button7.type = "Jump";
        button7.key = global.jumpbutton;
        button8 = instance_create(bColX1 + bXGap, bY1 + bLineIndent * 2, obj_button);
        button8.type = "Shoot";
        button8.key = global.shotbutton;
        button9 = instance_create(bColX1 + bXGap * 2, bY1 + bLineIndent * 2, obj_button);
        button9.type = "Restart";
        button9.key = global.restartbutton;
        
        //button16 = instance_create(bColX1 + bXGap - 152, bY1 + bLineIndent * 6 - 16, obj_button);
        //button16.type = "Door";
        //button16.key = global.doorButton;
        
        //button17 = instance_create(bColX1 + bXGap * 2 - 16, bY1 + bLineIndent * 6 - 16, obj_button);
        //button17.type = "Dynamite";
        //button17.key = global.dynamiteButton;
        bY1 -= 8;
        button10 = instance_create(bColX1, bY1 + bLineIndent * 4, obj_button);
        button10.type = "Menu";
        button10.key = global.menubutton;
        button11 = instance_create(bColX1 + bXGap, bY1 + bLineIndent * 4, obj_button);
        button11.type = "Transmission";
        button11.key = global.transmissionbutton;
        button12 = instance_create(bColX1 + bXGap * 2, bY1 + bLineIndent * 4, obj_button);
        button12.type = "CentralFlyingPos";
        button12.key = global.centralflyingposbutton;
        
        button13 = instance_create(bColX1, bY1 + bLineIndent * 5, obj_button);
        button13.type = "UpStairs";
        button13.key = global.upstairsbutton;
        button14 = instance_create(bColX1 + bXGap, bY1 + bLineIndent * 5, obj_button);
        button14.type = "DownStairs";
        button14.key = global.downstairsbutton;
        button15 = instance_create(bColX1 + bXGap * 2, bY1 + bLineIndent * 5, obj_button);
        button15.type = "CentralFlying";
        button15.key = global.centralflyingbutton;
        
        button16 = instance_create(bColX1, bY1 + bLineIndent * 6, obj_button);
        button16.type = "Door";
        button16.key = global.doorButton;
        button17 = instance_create(bColX1 + bXGap, bY1 + bLineIndent * 6, obj_button);
        button17.type = "Dynamite";
        button17.key = global.dynamiteButton;
        button18 = instance_create(bColX1 + bXGap * 2, bY1 + bLineIndent * 6, obj_button);
        button18.type = "Space";
        button18.key = global.spaceButton;
        }
          
    }
    else if(index == 4) //achievements
    {
        with(obj_menuObjPrototype)
        {
            instance_destroy();
        }
        /*if(initialized1 && surface_exists(surf2))
        {
            draw_set_alpha(1);
            draw_surface_part(surf2,0, surf2_hindex, 600, min(surf2_height - surf2_index, 576), 224, 24);
        }*/
        sx = xx + 224; 
        sy = yy + 24;
        pageCount = 6;
        if(aIndex == 0)
        {
            ppAvailable = false;
        }
        else
        {
            ppAvailable = true;
        }
        maxPage = ceil(achievementCount / pageCount) - 1;
        if(maxPage > aIndex)
        {
            pnAvailable = true;
        }
        else
        {
            pnAvailable = false;
        }
        sCount = achievementCount - pageCount * aIndex;
        if(sCount > pageCount)
        {
            sCount = pageCount;
        }
        
        if(maxPage > 0)
        {
            if(ppAvailable)
            {
                draw_sprite_ext(spr_previousPage, 0, xx + ppx,yy + pageY,1,1,0,c_white,0.7);
            }
            else
            {
                draw_sprite_ext(spr_previousPage, 1, xx + ppx,yy + pageY,1,1,0,c_white,0.7);
            }
        
            if(pnAvailable)
            {
                draw_sprite_ext(spr_nextPage, 0, xx + pnx,yy + pageY,1,1,0,c_white,0.7);
            }
            else
            {
                draw_sprite_ext(spr_nextPage, 1, xx + pnx,yy + pageY,1,1,0,c_white,0.7);
            }
        }
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        for(var i = pageCount * aIndex; i < (pageCount * aIndex + sCount); i+=1)
        {
            aX = 0 + sx;
            aY = 90 * (i - pageCount * aIndex) + sy;
            infoGap = 100;
            draw_set_alpha(1);
            draw_set_color(c_white);
            
            
            if(global.achievements[i])
            {
                if(i < 8)
                {
                    draw_sprite_part_ext(global.achievementSpr[i], 0, 16, 9, 51, 51, aX, aY, 1.333, 1.333, c_white, 1);
                }
                else
                {
                    draw_sprite_part_ext(global.achievementSpr[i], 0, 9, 9, 51, 51, aX, aY, 1.333, 1.333, c_white, 1);
                }
                draw_sprite(spr_achievementContainer,0,aX,aY);
                draw_set_font(font16);
                draw_text(aX + infoGap, aY, string_hash_to_newline(global.achievementName[i]));
                draw_set_font(fontBasicInfo);
                draw_text_ext(aX + infoGap, aY + 24, string_hash_to_newline(global.achievementDescription[i]), 16, 568 - infoGap);
            }
            else
            {
                draw_sprite_part_ext(spr_unknown, 0, 0, 0, 64, 64, aX, aY, 1.0625, 1.0625, c_white, 1);
                draw_set_font(font16);
                draw_text(aX + infoGap, aY, string_hash_to_newline("???"));
                draw_set_font(fontBasicInfo);
                if(global.special[5])
                {
                    draw_set_color(c_gray);
                    draw_text_ext(aX + infoGap, aY + 24, string_hash_to_newline(global.achievementDescription[i]), 16, 568 - infoGap);
                }
                else
                {
                    draw_text(aX + infoGap, aY + 24, string_hash_to_newline("???"));
                }
            }
        }
    }
    else if(index == 5)
    {
        with(obj_menuObjPrototype)
        {
            instance_destroy();
        }
        draw_set_font(font24);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_text(xx + 216,yy + 32, string_hash_to_newline("Friendly Hints"));
        draw_set_font(font16);
        draw_text_ext(xx + 216,yy + 96, string_hash_to_newline("If you are good at switching backups, you are more likely to find the best way out."), 48, 576);
        draw_sprite_ext(spr_newBackup, 0, xx + 500, yy + 290, 1,1,0,backupColor1, 0.8);
        draw_sprite_ext(spr_loadBackup, 0, xx + 500, yy + 470, 1,1,0,backupColor2, 0.8);
    }
    else if(index == 6)
    {
        with(obj_menuObjPrototype)
        {
            instance_destroy();
        }
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_set_color(c_yellow);
        draw_set_font(font24);
        draw_text(xx + 208, yy + 32, string_hash_to_newline("Warning:"));
        draw_set_font(font16);
        draw_text_ext(xx + 208, yy + 72, string_hash_to_newline("You can get additional keys in this tab. However, once you saved the additional keys get from this tab, you will be identified as a 'CHEATER', and you will not be able to see the true end."), 24, 576);
        
        
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_color(c_black);
        if(cheatSelection == 1)
        {
            draw_sprite_ext(sprButton, 1, xx + 250, yy + 200, 2.5 * 4 / 3, 1 * 4 / 3, 0, c_white, 1);
        }
        else
        {
            draw_sprite_ext(sprButton, 0, xx + 250, yy + 200, 2.5* 4 / 3, 1 * 4 / 3, 0, c_white, 1);
        }
        draw_text(xx + 500, yy + 200 + 25, string_hash_to_newline("I wanna 1 additional Yellow Key"));
        if(cheatSelection == 2)
        {
            draw_sprite_ext(sprButton, 1, xx + 250, yy + 200 + 60 * 1, 2.5* 4 / 3, 1 * 4 / 3, 0, c_white, 1);
        }
        else
        {
            draw_sprite_ext(sprButton, 0, xx + 250, yy + 200 + 60 * 1, 2.5* 4 / 3, 1 * 4 / 3, 0, c_white, 1);
        }
        draw_text(xx + 500, yy + 200 + 60 * 1 + 25, string_hash_to_newline("I wanna 1 additional Blue Key"));
        if(cheatSelection == 3)
        {
            draw_sprite_ext(sprButton, 1, xx + 250, yy + 200 + 60 * 2, 2.5* 4 / 3, 1 * 4 / 3, 0, c_white, 1);
        }
        else
        {
            draw_sprite_ext(sprButton, 0, xx + 250, yy + 200 + 60 * 2, 2.5* 4 / 3, 1 * 4 / 3, 0, c_white, 1);
        }
        draw_text(xx + 500, yy + 200 + 60 * 2 + 25, string_hash_to_newline("I wanna 1 additional Red Key"));
        if(cheatSelection == 4)
        {
            draw_sprite_ext(sprButton, 1, xx + 250, yy + 200 + 60 * 3, 2.5* 4 / 3, 1 * 4 / 3, 0, c_white, 1);
        }
        else
        {
            draw_sprite_ext(sprButton, 0, xx + 250, yy + 200 + 60 * 3, 2.5* 4 / 3, 1 * 4 / 3, 0, c_white, 1);
        }        
        draw_text(xx + 500, yy + 200 + 60 * 3 + 25, string_hash_to_newline("I wanna 1 additional Green Key"));
        if(cheatSelection == 5)
        {
            draw_sprite_ext(sprButton, 1, xx + 250, yy + 200 + 60 * 4, 2.5* 4 / 3, 1 * 4 / 3, 0, c_white, 1);
        }
        else
        {
            draw_sprite_ext(sprButton, 0, xx + 250, yy + 200 + 60 * 4, 2.5* 4 / 3, 1 * 4 / 3, 0, c_white, 1);
        }
        draw_text(xx + 500, yy + 200 + 60 * 4 + 25, string_hash_to_newline("I wanna 1 additional Iron Key"));
        
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_set_alpha(1);
        if(!global.isPreviousCheated && !global.isCheated)
        {
            draw_set_color(make_color_rgb(0,56,0));
            draw_text(xx + 300, yy + 520, string_hash_to_newline("You haven't cheated, you are a good kid."));
        }
        if(!global.isPreviousCheated && global.isCheated)
        {
            draw_set_color(c_yellow);
            draw_text_ext(xx + 300, yy + 520, string_hash_to_newline("You attempted to cheat but yet not saved. You can go back."), 30, 484);
        }
        if(global.isPreviousCheated && global.isCheated)
        {
            draw_set_color(c_red);
            draw_text(xx + 300, yy + 520, string_hash_to_newline("You DIRTY CHEATER!!!!"));
        }
        draw_text(xx + 216, yy + 520, string_hash_to_newline("Status : "));
    }
    else
    {
        with(obj_menuObjPrototype)
        {
            instance_destroy();
        }
    }
    if(isRefresh)
    {
        //screen_refresh();
        isRefresh = false;
    }
}
else if(instance_exists(obj_menuObjPrototype))
{
    with(obj_menuObjPrototype)
    {
        instance_destroy();
    }
}

/* */
if(!deactivated && drawTeleportTarget)
{
            if(room == rSecret1 || room == rSecret3)
            {
                teleportX = 800 - player.x;
                teleportY = 608 - player.y;
            }
            else if(room == rSecret2)
            {
                teleportX = 800 - player.x;
                teleportY = 32 + 576 - (player.y - 32);
            }
            else
            {
                teleportX = 192 + 608 - (player.x - 192);
                teleportY = 608 - player.y;
            }
            teleportY += (23 - (32 - 23)) - (32 - 23);
            draw_sprite_ext(player.sprite_index,player.sprite_index,teleportX,teleportY,-player.image_xscale,1,0,c_black,0.5);
}

/* */
/// Reset drawing
draw_reset();

/* */
/*  */
