offset += vspd;
if(offset >= 192)
{
    offset -= 192;
}
else if(offset <= -192)
{
    offset += 192;
}
tileOffset = offset mod 32;


