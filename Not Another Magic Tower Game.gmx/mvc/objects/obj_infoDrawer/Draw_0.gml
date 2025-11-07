draw_set_alpha(image_alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
if(phase == 0)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY,string_hash_to_newline("PRODUCER"));
    draw_set_font(fontBEInfo);
    draw_text(infoLeftX,infoLeftY,string_hash_to_newline("Light"));
    draw_text(infoRightX,infoRightY,string_hash_to_newline("Koala"));
    draw_text(infoLeftX,infoLeftY + 64,string_hash_to_newline("Nikaple"));
    draw_text(infoRightX,infoRightY + 64,string_hash_to_newline("Shiliu"));
    draw_text(infoLeftX,infoLeftY + 128,string_hash_to_newline("Igzicorus"));
    draw_sprite_ext(spr_beStory, phase, sprX, sprY, 1, 1, 0, c_white, image_alpha);
}
else if(phase == 1)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY,string_hash_to_newline("STORY DESIGN"));
    draw_set_font(fontBEInfo);
    draw_text(infoLeftX,infoLeftY,string_hash_to_newline("Light"));
    draw_text(infoRightX,infoRightY,string_hash_to_newline("Koala"));
    draw_sprite_ext(spr_beStory, phase, sprX, sprY, 1, 1, 0, c_white, image_alpha);
}
else if(phase == 2)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY,string_hash_to_newline("SYSTEM DESIGN"));
    draw_set_font(fontBEInfo);
    draw_text(infoLeftX,infoLeftY,string_hash_to_newline("Light"));
    draw_text(infoRightX,infoRightY,string_hash_to_newline("Koala"));
    draw_sprite_ext(spr_beStory, phase, sprX, sprY, 1, 1, 0, c_white, image_alpha);
}
else if(phase == 3)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY,string_hash_to_newline("BATTLE DESIGN"));
    draw_set_font(fontBEInfo);
    draw_text(infoLeftX,infoLeftY,string_hash_to_newline("Light"));
    draw_text(infoRightX,infoRightY,string_hash_to_newline("Koala"));
    draw_text(infoLeftX,infoLeftY + 64,string_hash_to_newline("Nikaple"));
    draw_sprite_ext(spr_beStory, phase, sprX, sprY, 1, 1, 0, c_white, image_alpha);
}
else if(phase == 4)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY,string_hash_to_newline("PUZZLE DESIGN"));
    draw_set_font(fontBEInfo);
    draw_text(infoLeftX,infoLeftY,string_hash_to_newline("Light"));
    draw_text(infoRightX,infoRightY,string_hash_to_newline("Koala"));
    draw_text(infoLeftX,infoLeftY + 64,string_hash_to_newline("Shiliu"));
    draw_text(infoRightX,infoRightY + 64,string_hash_to_newline("Igzicorus")); 
    draw_sprite_ext(spr_beStory, phase, sprX, sprY, 1, 1, 0, c_white, image_alpha);
}
else if(phase == 5)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY,string_hash_to_newline("CREDITS"));
    draw_set_font(fontBEInfo);
    draw_text(infoLeftX,infoLeftY,string_hash_to_newline("Kuri"));
    draw_text(infoRightX,infoRightY,string_hash_to_newline("Lunatic Element"));
    draw_text(infoLeftX,infoLeftY + 64,string_hash_to_newline("PP"));
    draw_text(infoRightX,infoRightY + 64,string_hash_to_newline("Sword Slinger"));
    draw_text(infoLeftX,infoLeftY + 128,string_hash_to_newline("A64"));
    draw_text(infoRightX,infoRightY + 128,string_hash_to_newline("Andres Sgarrido"));
    draw_text(infoLeftX,infoLeftY + 192,string_hash_to_newline("FailJguy"));
    draw_text(infoRightX,infoRightY + 192,string_hash_to_newline("Xiao Cong"));
    draw_sprite_ext(spr_beStory, phase, sprX, sprY, 1, 1, 0, c_white, image_alpha);
}
else if(phase == 6)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY,string_hash_to_newline("Main Tester"));
    draw_set_font(fontBEInfo);
    draw_text(infoLeftX,infoLeftY,string_hash_to_newline("A64"));
    draw_text(infoRightX,infoRightY,string_hash_to_newline("Kuri"));
    draw_text(infoLeftX,infoLeftY + 64,string_hash_to_newline("Sword Slinger"));
    draw_text(infoRightX,infoRightY + 64,string_hash_to_newline("Andres Sgarrido"));
    draw_text(infoLeftX,infoLeftY + 128,string_hash_to_newline("FailJguy"));
    draw_text(infoRightX,infoRightY + 128,string_hash_to_newline("Mirror Whisper"));
    draw_text(infoLeftX,infoLeftY + 192,string_hash_to_newline("FASF"));
    draw_sprite_ext(spr_beStory, phase, sprX, sprY, 1, 1, 0, c_white, image_alpha);
}
else if(phase == 7)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY,string_hash_to_newline("Other Tester"));
    draw_set_font(fontBEInfo);
    draw_text(infoLeftX,infoLeftY,string_hash_to_newline("Leng Jian"));
    draw_text(infoRightX,infoRightY,string_hash_to_newline("Xiao Cong"));
    draw_text(infoLeftX,infoLeftY + 64,string_hash_to_newline("Lunatic Element"));
    draw_text(infoRightX,infoRightY + 64,string_hash_to_newline("07"));
    draw_text(infoLeftX,infoLeftY + 128,string_hash_to_newline("51"));
    draw_text(infoRightX,infoRightY + 128,string_hash_to_newline("Ka Zhu"));
    
    draw_sprite_ext(spr_beStory, phase, sprX, sprY, 1, 1, 0, c_white, image_alpha);
}
else if(phase == 8)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY,string_hash_to_newline("Special Thanks"));
    draw_set_font(fontBEInfo);
    draw_text(infoLeftX,infoLeftY,string_hash_to_newline("Lunatic Element"));
    draw_text(infoRightX,infoRightY,string_hash_to_newline("Sunbla"));
    draw_text(infoLeftX,infoLeftY + 64,string_hash_to_newline("A64"));
    draw_text(infoRightX,infoRightY + 64,string_hash_to_newline("FailJguy"));
    draw_text(infoLeftX,infoLeftY + 128,string_hash_to_newline("Sword Slinger"));
    draw_text(infoRightX,infoRightY + 128,string_hash_to_newline("Andres Sgarrido"));
    draw_text(infoLeftX,infoLeftY + 192,string_hash_to_newline("(and you)"));
    draw_sprite_ext(spr_beStory, phase, sprX, sprY, 1, 1, 0, c_white, image_alpha);
}
else if(phase == 9)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY,string_hash_to_newline("Sprite Resources"));
    draw_set_font(fontBEInfo);
    draw_text(infoCentralX,infoLeftY,string_hash_to_newline("RPG Maker vx"));
    draw_text(infoCentralX,infoLeftY + 48,string_hash_to_newline("Magic Tower Sample"));
    draw_text(infoCentralX,infoLeftY + 96,string_hash_to_newline("I wanna be the guy"));
    draw_text(infoCentralX,infoLeftY + 144,string_hash_to_newline("Not Another Needle Game"));
    draw_text(infoCentralX,infoLeftY + 192,string_hash_to_newline("I wanna be the calamity fortune"));
    draw_text(infoCentralX,infoLeftY + 240,string_hash_to_newline("I wanna fapple"));
    draw_text(infoCentralX,infoLeftY + 288,string_hash_to_newline("i wanna be the strong"));  
    draw_text(infoCentralX,infoLeftY + 336,string_hash_to_newline("http://spriters-resource.com"));
    draw_sprite_ext(spr_beStory, phase, sprX, sprY, 1, 1, 0, c_white, image_alpha);
}
else if(phase == 10)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY,string_hash_to_newline("BGM Resources"));
    draw_set_font(fontBEInfo);
    draw_text(infoCentralX,infoLeftY,string_hash_to_newline("RPG Maker vx"));
    draw_text(infoCentralX,infoLeftY + 48,string_hash_to_newline("Magic Tower Sample"));
    draw_text(infoCentralX,infoLeftY + 96,string_hash_to_newline("I wanna be the guy"));
    draw_text(infoCentralX,infoLeftY + 144,string_hash_to_newline("Not Another Needle Game"));
    draw_text(infoCentralX,infoLeftY + 192,string_hash_to_newline("I wanna be the calamity fortune"));
    draw_text(infoCentralX,infoLeftY + 240,string_hash_to_newline("i wanna be the strong")); 
    draw_text(infoCentralX,infoLeftY + 288,string_hash_to_newline("Saitama Saishuuheiki - Saitama's Ultimate Weapon"));
    draw_text(infoCentralX,infoLeftY + 336,string_hash_to_newline("http://www.newgrounds.com"));
    draw_sprite_ext(spr_beStory, phase, sprX, sprY, 1, 1, 0, c_white, image_alpha);
}
else if(phase ==11)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY,string_hash_to_newline("Engine"));
    draw_set_font(fontBEInfo);
    draw_text(infoCentralX,infoLeftY+40,string_hash_to_newline("i wanna be the engine Nikaple edition"));
   // draw_text(infoCentralX,infoLeftY + 64,'Made By');
    draw_sprite_ext(spr_beStory, phase, sprX, sprY, 1, 1, 0, c_white, image_alpha);
}
else if(phase == 12)
{
    draw_set_font(fontBETitle);
    draw_text(infoCentralX,infoCentralY+70,string_hash_to_newline("Thank You for Playing!"));
}


draw_set_halign(fa_left);
draw_set_alpha(1);

