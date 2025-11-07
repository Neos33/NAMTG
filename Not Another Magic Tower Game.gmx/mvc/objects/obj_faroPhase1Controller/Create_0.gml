
time[0] = 35; 
time[1] = 45;
time[2] = 150; 
time[3] = 180;
time[4] = 190;
time[5] = 300; 
time[6] = 310;
time[7] = 330;
time[8] = 340;
time[9] = 450;
time[10] = 460;
time[11] = 490;
time[12] = 500;
time[13] = 530;
time[14] = 550;
time[15] = 570;
time[16] = 580;
time[17] = 590;

tx[0] = 144;ty[0] = 304; 
tx[1] = 656;ty[1] = 304;
tx[2] = 400;ty[2] = 304;
tx[3] = 400;ty[3] = 304;
tx[4] = 400;ty[4] = 304;
tx[5] = 96;ty[5] = 96;
tx[6] = 704;ty[6] = 96;
tx[7] = 704;ty[7] = 512;
tx[8] = 96;ty[8] = 512;
rad = 200;
ang = 45;
cCount = 0;
list = ds_list_create();
ds_list_add(list,3);
ds_list_add(list,2);
ds_list_add(list,1);
ds_list_add(list,0);
ds_list_add(list,7);
ds_list_add(list,6);
ds_list_add(list,5);
ds_list_add(list,4);
for(i=0;i<8;i+=1)
{
    val = ds_list_find_value(list,i);
    tx[9+i] = 400 + rad * cos(degtorad(ang * val));
    ty[9+i] = 304- rad * sin(degtorad(ang * val));
}
/*tx[9] = 400 + rad * cos(degtorad(ang  * 3));ty[9] = 304- rad * sin(degtorad(ang * 3));
tx[10] = 400 + rad * cos(degtorad(ang  * 0));ty[10] = 304- rad * sin(degtorad(ang * 0));
tx[11] = 400 + rad * cos(degtorad(ang  * 1));ty[11] = 304- rad * sin(degtorad(ang * 2));
tx[12] = 400 + rad * cos(degtorad(ang  * 4));ty[12] = 304- rad * sin(degtorad(ang * 4));
tx[13] = 400 + rad * cos(degtorad(ang  * 2));ty[13] = 304- rad * sin(degtorad(ang * 2));
tx[14] = 400 + rad * cos(degtorad(ang  * 5));ty[14] = 304- rad * sin(degtorad(ang * 5));
tx[15] = 400 + rad * cos(degtorad(ang  * 0));ty[15] = 304- rad * sin(degtorad(ang * 0));
tx[16] = 400 + rad * cos(degtorad(ang  * 7));ty[16] = 304- rad * sin(degtorad(ang * 7));*/

num[0] = 1; 
num[1] = 2;
num[2] = 1; 
num[3] = 2;
num[4] = 3; 
num[5] = 1;
num[6] = 2;
num[7] = 3;
num[8] = 4;
num[9] = 1;
num[10] = 2; 
num[11] = 3;
num[12] = 4; 
num[13] = 5;
num[14] = 6; 
num[15] = 7;
num[16] = 8;

type[0] = 0; 
type[1] = 0;
type[2] = 1; 
type[3] = 2;
type[4] = 2; 
type[5] = 0;
type[6] = 0;
type[7] = 0;
type[8] = 0;
type[9] = 4;
type[10] = 4; 
type[11] = 4;
type[12] = 4; 
type[13] = 4;
type[14] = 4; 
type[15] = 4;
type[16] = 4;

count = 17;

path[0] = pathFaroStart1;
path[1] = pathFaroStart2;
path[2] = pathFaroStart3;
path[3] = pathFaroStart4;
path[4] = pathFaroStart5;
path[5] = pathFaroStart6;
for(i=6;i<14;i+=1)
{
    path[i] = path_add();
    path_set_kind(path[i],1);
    path_set_precision(path[i],8);
    path_set_closed(path[i], false);
    if(i == 6 || i == 7)
    {
        px0 = 96;
        py0 = 96;
    }
    else if(i == 8 || i == 9)
    {
        px0 = 704;
        py0 = 96;
    }
    else if(i == 10 || i == 11)
    {
        px0 = 704;
        py0 = 512;
    }
    else if(i == 12 || i == 13)
    {
        px0 = 96;
        py0 = 512;
    }
    path_add_point(path[i],px0,py0,100);
    midX = 400 + rad * cos(degtorad(ang  * ds_list_find_value(list,((i-6) + 4) mod 8)));
    mixY = 304- rad * sin(degtorad(ang * ds_list_find_value(list,((i-6) + 4) mod 8)));
    pathX = 400 + rad * cos(degtorad(ang  * ds_list_find_value(list,i-6)));
    pathY = 304- rad * sin(degtorad(ang * ds_list_find_value(list,i-6)));
    //path_add_point(path[i],midX, midY,100);
    path_add_point(path[i],400, 304,100);
    path_add_point(path[i], pathX, pathY, 100);
}

pTime[0] = 45; 
pTime[1] = 45;
pTime[2] = 190; 
pTime[3] = 190;
pTime[4] = 190;
pTime[5] = 190; 
pTime[6] = 305;
pTime[7] = 310;
pTime[8] = 315;
pTime[9] = 320;
pTime[10] = 335;
pTime[11] = 340;
pTime[12] = 345 ;
pTime[13] = 350;

pInv[0] = 75; 
pInv[1] = 75;
pInv[2] = 70; 
pInv[3] = 70;
pInv[4] = 70;
pInv[5] = 70; 
pInv[6] = 100;
pInv[7] = 100;
pInv[8] = 100;
pInv[9] = 100;
pInv[10] = 100;
pInv[11] = 100;
pInv[12] = 100;
pInv[13] = 100;

pc = 0;
pathCount = 14;
alarm[0] = 460;
alarm[1] = 600;
alarm[2] = 630;
alarm[3] = 660;
dCount = 0;
dashCount = 15;

/* */
/*  */
