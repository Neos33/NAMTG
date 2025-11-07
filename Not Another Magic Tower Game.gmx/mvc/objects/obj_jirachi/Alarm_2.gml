if(mixedAlpha < 1)
{
    mixedAlpha += 0.05;
    alarm[2] = 1;
}
else
{
    explodePolygon2(x,y, 5,400,random_range(1,360),15,50,obj_jirachiEffectStarExplode, spr_jirachiEffectStar, 0.2);
    image_alpha = 0;
    alarm[3] = 30;
}

