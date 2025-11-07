var startAngle = random_range(0,359);
var lines = floor(3 + (fhp - hp) / 6);
var num = floor(4 + (fhp - hp) / 4);
if(lines < 5)
{
    explodePolygon(x + sprite_width / 2,y + sprite_height / 2, 
        lines,250,startAngle,num,50,obj_4B6GreenApple, sprCherryGreen, 1/15, true);
}
else
{
    explodePolygon2(x + sprite_width / 2,y + sprite_height / 2, 
        lines,250,startAngle,num,50,obj_4B6GreenApple, sprCherryGreen, 1/15);
}
if(hp == 0)
{
    alarm[2] = 150;
}


