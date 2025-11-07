if(global.maxFloor < 11)
{
    myMsg[0] = "Old Gay : 11F do exists.";
    myMsg[1] = "Kid : Do you know how to get there?";
    myMsg[2] = "Old Gay : God's design must not be revealed to mortal ears.";
    myMsg[3] = "Kid : Please!";
    myMsg[4] = "Old Gay : OK, but what I can tell is you need to collect 4 elemental keys first.";
    myMsg[5] = "Kid : Many thanks!";
    messageLength = 6;
}
else if(!global.special[13])
{
    myMsg[0] = "Old Gay : Well, you've reached 11F but still remember me. Impressive!";
    myMsg[1] = "Kid : Sorry, I'm not gay.";
    myMsg[2] = "Old Gay : What the.. All right, seems you do not want to know more.";
    myMsg[3] = "Kid : Gay, is cool!";
    myMsg[4] = "Old Gay : Sorry, I'm so old that I cannot here what you just said.";
    myMsg[5] = "Kid : GAY IS SO COOOOOOOOOOOOOOL!!!!";
    myMsg[6] = "Old Gay : Nice shout, dude. What I can tell you is the clue for finding the Fairy Tail. "
    msMsg[7] = "Old Gay : Remember, the most useless design will open the way to the secret.";
    messageLength = 8;
}
else
{
    myMsg[0] = "Old Gay : Nice dude. I know nothing more to help you. Good luck.";
    messageLength = 1;
}