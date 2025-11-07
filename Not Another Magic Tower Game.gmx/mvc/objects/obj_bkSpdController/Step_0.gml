if(blockSpd < targetSpd)
{
    blockSpd += 0.01;
}
if(waterLevel < targetWaterLevel)
{
    waterLevel += 0.1;
    with(obj_fireWater1)
    {
        y -= 0.1;
    }
}

