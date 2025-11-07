if(fullHp == 0)
{
    fullHp = hp;
    global.defenseDamage = RangeClamp(atk - global.defense, 1, 10000);
}
x = -16;
y = 176;
alarm[11] = 1;
alarm[10] = 100;


