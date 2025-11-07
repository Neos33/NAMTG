if(!global.achievements[97] || !global.ironDoors[2] || !global.special[12])
{
    instance_destroy();
}
else if(!global.specialBlock[11])
{
    myMsg[0] = "Gay Kid : Seeing you let me recall my past. ";
    myMsg[1] = "Kid : ... "
    myMsg[2] = "Gay Kid : It's fair you choose the way you go, and you reached here. I'll open the gate for you, but you will still need to enter the password.";
    messageLength = 3;
}
else
{
    myMsg[0] = "Gay Kid : Good Luck! ";
    messageLength = 1;
}