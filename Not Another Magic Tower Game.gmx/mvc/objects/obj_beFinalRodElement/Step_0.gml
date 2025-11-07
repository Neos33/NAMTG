image_angle = dir;
if(type == 0)
{
    x = obj_beFinalPhase1.x + 40 * index * cos(degtorad(dir));
    y = obj_beFinalPhase1.y - 40 * index * sin(degtorad(dir));
}
else if(type == 1)
{
    x = obj_beFinalPhase2.x + 40 * index * cos(degtorad(dir));
    y = obj_beFinalPhase2.y - 40 * index * sin(degtorad(dir));
}
else if(type == 2)
{
    x = obj_beFinalPhase3.x + 40 * index * cos(degtorad(dir));
    y = obj_beFinalPhase3.y - 40 * index * sin(degtorad(dir));
}

if(spark)
{
    spark.x = x;
    spark.y = y;
}

