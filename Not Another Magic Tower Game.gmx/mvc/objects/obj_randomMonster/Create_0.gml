event_inherited();
ind = irandom_range(401,1000);
alarm[10] = 1;
atk=global.attack;
def=RangeClamp(global.defense,0,global.attack - 1);
hp=50;
ex=0;
name = "Unknown";
combatObj = obj_randomMonster_combat;
mybattleroom = battleroom3;

