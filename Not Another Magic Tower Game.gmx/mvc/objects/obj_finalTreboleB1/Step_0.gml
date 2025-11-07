timer += 1;
if timer<20{
    direction -= ddir;
}
else if timer<60{
    direction -= ddir;
    ddir -= ddirspd;
}
fade_in(15);

