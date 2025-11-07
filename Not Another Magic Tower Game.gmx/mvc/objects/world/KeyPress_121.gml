
if(!global.testMode) exit;
bType = get_integer(@"Provide the type you want to add:
0: Attack
1: Defense
2: HP
3: Yellow key
4: Blue key
5: Red key
6: Green key
7: Iron key","");
bAmmount = get_integer("Provide the ammount:", 0);
if(bType == 0)
{
    global.attack += bAmmount;
}
else if(bType == 1)
{
    global.defense += bAmmount;
}
else if(bType == 2)
{
    global.hp += bAmmount;
}
else if(bType == 3)
{
    global.yellowKeyNum += bAmmount;
}
else if(bType == 4)
{
    global.blueKeyNum += bAmmount;
}
else if(bType == 5)
{
    global.redKeyNum += bAmmount;
}
else if(bType == 6)
{
    global.greenKeyNum += bAmmount;
}
else if(bType == 7)
{
    global.ironKeyNum += bAmmount;
}


