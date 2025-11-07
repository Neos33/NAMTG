repeat(15)
{
    p = instance_create(x + random_range(-200, 200) , y + random_range(-30, 30), obj_spellCardClearLeaf);
    p.speed = random_range(5,7);
    p.direction = random_range(0,359);
}
alarm[0] = 1;

