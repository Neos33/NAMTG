var ind;
ind = 0;
//0 - yaranaika
bossName[ind] = "Yaranaika";
bossObj[ind] = obj_light_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 6;
bossPoints[ind,1] = 7;
bossPoints[ind,2] = 8;
bossPoints[ind,3] = 9;
bossRoom[ind] = battleMiniboss1;
ind += 1;

//1 - 3b6
bossName[ind] = "3B6";
bossObj[ind] = obj_3b6_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 7;
bossPoints[ind,1] = 7;
bossPoints[ind,2] = 8;
bossPoints[ind,3] = 9;
bossRoom[ind] = battleroomBE;
ind += 1;

//2 - FaShiLiu
bossName[ind] = "FaShiLiu";
bossObj[ind] = obj_faShiLiu_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 30;
bossHp[ind] = 666;
bossPoints[ind,0] = 5;
bossPoints[ind,1] = 6;
bossPoints[ind,2] = 8;
bossPoints[ind,3] = 10;
bossRoom[ind] = rFaShiliu01;
ind += 1;

//3 - Faro
bossName[ind] = "Faro";
bossObj[ind] = obj_faro_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 6;
bossPoints[ind,1] = 8;
bossPoints[ind,2] = 10;
bossPoints[ind,3] = 12;
bossRoom[ind] = rFaro1;
ind += 1;

//4 - Diamante
bossName[ind] = "Mr.Diamante";
bossObj[ind] = obj_diamante_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 20;
bossHp[ind] = 333;
bossPoints[ind,0] = 8;
bossPoints[ind,1] = 8;
bossPoints[ind,2] = 9;
bossPoints[ind,3] = 10;
bossRoom[ind] = rDiamante;
ind += 1;

//5 - Trebole
bossName[ind] = "Mr.Trebole";
bossObj[ind] = obj_trebole_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 12;
bossPoints[ind,1] = 12;
bossPoints[ind,2] = 13;
bossPoints[ind,3] = 14;
bossRoom[ind] = rTrebole;
ind += 1;

//6 - Corazone
bossName[ind] = "Mr.Corazone";
bossObj[ind] = obj_corazone_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 20;
bossHp[ind] = 333;
bossPoints[ind,0] = 6;
bossPoints[ind,1] = 6;
bossPoints[ind,2] = 7;
bossPoints[ind,3] = 8;
bossRoom[ind] = rCorazone;
ind += 1;

//7 - Pica
bossName[ind] = "Mr.Pica";
bossObj[ind] = obj_pica_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 10;
bossPoints[ind,1] = 10;
bossPoints[ind,2] = 11;
bossPoints[ind,3] = 12;
bossRoom[ind] = rPica;
ind += 1;

//8 - 4b6
bossName[ind] = "4B6";
bossObj[ind] = obj_4b6_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 7;
bossPoints[ind,1] = 7;
bossPoints[ind,2] = 8;
bossPoints[ind,3] = 10;
bossRoom[ind] = rNPCBattle;
ind += 1;

//9 - tower lead
bossName[ind] = "The Tower Lead";
bossObj[ind] = obj_demonLead_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 20;
bossHp[ind] = 6666;
bossPoints[ind,0] = 12;
bossPoints[ind,1] = 13;
bossPoints[ind,2] = 14;
bossPoints[ind,3] = 15;
bossRoom[ind] = rDemonLead;
ind += 1;

//10 - fapple
bossName[ind] = "Fapple";
bossObj[ind] = obj_taisa;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 14;
bossPoints[ind,1] = 15;
bossPoints[ind,2] = 16;
bossPoints[ind,3] = 17;
bossRoom[ind] = rTaisa;
ind += 1;

//11 - Fabla
bossName[ind] = "The Fabla";
bossObj[ind] = obj_fabla_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 14;
bossPoints[ind,1] = 14;
bossPoints[ind,2] = 15;
bossPoints[ind,3] = 16;
bossRoom[ind] = rFabla;
ind += 1;



acceptableHits = 0;
totalPoints = 0;
hitOffset = 0;
listCount = 0;
tInd = 0;
defaultHits = 0;
challengePoints = 0;


challengeId = 9;
cx = 272;
cy = 240;
instance_create(mouse_x,mouse_y,obj_galleryBrMouseControl1);
instance_create(cx,544,obj_galleryBrSelect);
instance_create(cx-66,544-2,obj_galleryBrLeftArrow);
instance_create(cx+64,544-2,obj_galleryBrRightArrow);
instance_create(744,492+4, obj_galleryBrChange);
instance_create(657-55,544, obj_galleryBrStart1);
instance_create(657+55,544, obj_galleryBrCancel1);
totalCount = 0;
for(var i=0;i<11;i+=1)
{
    add = true;
    if(i == 2 && !global.monsters[205])
    {
        add = false;
    }
    else if(i == 4 && !global.monsters[212])
    {
        add = false;
    }
    else if(i == 5 && !global.monsters[239])
    {
        add = false;
    }
    else if(i == 6 && !global.monsters[229])
    {
        add = false;
    }
    else if(i == 7 && !global.monsters[219])
    {
        add = false;
    }
    else if(i == 8 && !global.story[33])
    {
        add = false;
    }
    else if(i == 9 && !global.monsters[317])
    {
        add = false;
    }
    else if(i == 10 && !global.monsters[318])
    {
        add = false;
    }
    if(add)
    {
        with(instance_create(cx,cy,obj_customRushCards))
        {
            image_index = i;
            ind = other.totalCount;
        }
        totalCount += 1;
    }
}
hr = 150;
vr = 100;

gapAngle = 360/totalCount;
currentInd = 0;
event_user(0);
event_user(10);

