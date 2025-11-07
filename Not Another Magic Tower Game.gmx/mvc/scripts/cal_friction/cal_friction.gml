/*
**  Usage:
**      cal_friction(speed,distance)
*/
{
    var s,d;
    s = argument0;
    d = argument1;
    if (d < 0) return -1 else return (s*s)/(s+2*d);
}
