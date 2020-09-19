if(argument0 == 1)
{
    return "100%";
}
else
{
    return string_format(100 * argument0,4,2) + "%";
}
