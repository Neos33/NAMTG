//for 8.0 incompatibale
var tt, tmin, tmax, tResult;
tt = argument0;
tmin = argument1;
tmax = argument2;

tResult = tt;
if(tResult < tmin)
{
    tResult = tmin;
}

if(tResult > tmax)
{
    tResult = tmax;
}

return tResult;
