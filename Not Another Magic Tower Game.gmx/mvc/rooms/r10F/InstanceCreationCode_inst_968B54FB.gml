if(global.maxFloor < 11)
{
    myMsg[0] = "Old Gay : See the mysterious orbs? It is said it's consisted of pure positive energy, and cheaters will die as soon as they touch it."
    if(global.isCheated)
    {
         myMsg[1] = "Kid : ..."; 
    }
    else
    {
        myMsg[1] = "Kid : That's cool.";
    }
    messageLength = 2;
}
else if(!global.special[11])
{
    myMsg[0] = "Old Gay : Good to see you again. What can I help you?";
    myMsg[1] = "Kid : Please tell me what you know about this tower.";
    myMsg[2] = "Old Gay : It's a magic tower.";
    myMsg[3] = "Kid : Thanks, but any more details?";
    myMsg[4] = "Old Gay : Have you found the saint cross?";
    myMsg[5] = "Kid : Not yet.";
    myMsg[6] = "Old Gay : It's guarded by the giant dragon. And as I know, it's not even inside the tower.";
    myMsg[7] = "Kid : This is really helpful, thanks.";
    messageLength = 8;
}
else
{
    myMsg[0] = "Old Gay : Nice dude. I know nothing more to help you. Good luck.";
    messageLength = 1;
}
