draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(0,0,800,608,false);

draw_set_font(fontBasicInfoLarge);
draw_set_alpha(1);
draw_set_color(c_silver);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(cx, 48, string_hash_to_newline("Select Bosses"));



if(instance_exists(obj_galleryBrCRCard))
{
    draw_set_alpha(0.3);
    draw_set_color(c_gray);
    for(var i=1;i<=3;i+=1)
    {
        draw_rectangle(512+i,i,800,608-i,true);
    }
    draw_set_alpha(0.3);
    draw_rectangle(512,0,800,608,false);
    
    draw_set_font(fontBasicInfoBold);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(656, 48, string_hash_to_newline("Challenge Info"));

    draw_set_font(fontBasicInfoMiniBold);
    draw_set_halign(fa_left);
    
    challengePoints = totalPoints + hitOffset;
    if(challengePoints < 0)
    {
        challengePoints = 0;
    }
    
    draw_text(524,440, string_hash_to_newline("High Score : " + string(global.MaxChallengePoints) + " pts"));
    draw_text(524,468, string_hash_to_newline("Total Points : " + string(challengePoints) + " pts"));
    draw_text(524,492, string_hash_to_newline("Acceptable Hits : " + string(acceptableHits)));
     
}


draw_reset();

