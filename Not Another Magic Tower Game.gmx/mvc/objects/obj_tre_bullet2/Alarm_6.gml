x = 400+lengthdir_x(r1,dir6)-lengthdir_x(r2,n*dir6);
y = 304+lengthdir_y(r1,dir6)-lengthdir_y(r2,n*dir6);
r1 += r1spd;
r2 += r2spd;
dir6 += dirspd6;
if dirspd6<dmax
{
    dirspd6 += asd;
}
alarm[6] = 1;

