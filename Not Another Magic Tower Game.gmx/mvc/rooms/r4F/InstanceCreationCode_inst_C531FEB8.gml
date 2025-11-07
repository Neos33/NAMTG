if(!global.greenKeys[2])
{
    myMsg[0] = "Andres Sgarrido(Secret Leaker) : You may have wings, but you may not find the emerald.";
    myMsg[1] = "Kid : What do you mean?";
    myMsg[2] = "Andres Sgarrido(Secret Leaker) : Mean you may not be able to solve the riddle below.";
    myMsg[3] = "Kid : ...";
    messageLength = 4;
}
else if(!global.monsters[73])
{
    myMsg[0] = "Andres Sgarrido(Secret Leaker) : Yaranaika is sexy!";
    myMsg[1] = "Kid : You must be a gay..";
    myMsg[2] = "Andres Sgarrido(Secret Leaker) : Well, the special item he protects is the most useful one in this tower. Try to beat him!";
    messageLength = 3;
}
else if(global.maxFloor <= 7 && !global.secretWalls[11])
{
    myMsg[0] = "Andres Sgarrido(Secret Leaker) : You may save a green key at 7F if you are able to beat the Red Bat.";
    messageLength = 1;
}
else if(global.maxFloor < 10)
{
    myMsg[0] = "Andres Sgarrido(Secret Leaker) : Don't waste wings, you will have to use each kind of them once when required.";
    messageLength = 1;
}
else if(global.maxFloor == 10)
{
    myMsg[0] = "Andres Sgarrido(Secret Leaker) : You have to collect 4 elemental keys to open the way to 11F.";
    messageLength = 1;
}
else if(global.attack < 88)
{
    myMsg[0] = "Andres Sgarrido(Secret Leaker) : Mini games in 10F has rich rewards. Get some before you stepping forward.";
    messageLength = 1;
}
else if(!global.story[28])
{
    myMsg[0] = "Andres Sgarrido(Secret Leaker) : I believe I can fly~ I believe I can touch 13F~";
    messageLength = 1;
}
else if(!global.special[10])
{
    myMsg[0] = "Andres Sgarrido(Secret Leaker) : There are 2 possible reasons that you cannot find the maps for 15F. First one is that you are not strong or skilled enough. Second is due to your forgetfulness.";
    messageLength = 1;
}
else if(!global.story[32])
{
    myMsg[0] = "Andres Sgarrido(Secret Leaker) : Place the four gems in 16F before you battling with your friends.";
    myMsg[1] = "Kid : Where can I get these gems?";
    myMsg[2] = "Andres Sgarrido(Secret Leaker) : Well, if you serve the guys in prison well, you will have them.";
    messageLength = 3;
}
else if(!global.story[34])
{
    myMsg[0] = "Andres Sgarrido(Secret Leaker) : You idiot! You killed my brothers! You will not see the true end!!";
    myMsg[1] = "Kid : ...";
    messageLength = 2;
}
else if(!global.specialBlock[9])
{
    myMsg[0] = "Andres Sgarrido(Secret Leaker) : See the large amount of doors behind the tower lead?";
    myMsg[1] = "Andres Sgarrido(Secret Leaker) : Open them all!";
    messageLength = 2;
}
else
{
    myMsg[0] = "Andres Sgarrido(Secret Leaker) : I've told you everything. Good luck, young man!";
    messageLength = 1;
}