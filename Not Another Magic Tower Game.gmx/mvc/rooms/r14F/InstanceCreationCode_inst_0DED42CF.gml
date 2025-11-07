depth = 10000000000;
if(!global.special[13])
{
    myMsg[0] = "Kid : So you must be the lead here.";
    myMsg[1] = "Senior Fairy : Yes, but what are you looking for here human? If nothing important please go out!";
    myMsg[2] = "Kid : I just want to help you.";
    myMsg[3] = "Senior Fairy : Don't fool with me. If that's true, just bring the Fairy Tail back to us.";
    myMsg[4] = "Kid : ...";
    myMsg[5] = "Kid : (Fairy Tail... Maybe that's the only thing could make the fairies open their real heart to me.) ";
    messageLength = 6;
}
else if(!global.clearItem[9])
{
    myMsg[0] = "Senior Fairy : It's the Fairy Tail! You are bringing it to us?";
    myMsg[1] = "Kid : Yes. It's useless for me, but I think that would be important for you.";
    myMsg[2] = "Senior Fairy : I apologize for being rude to you previously. The tower lead is really strong. We have a plan and our leader is already in action, but frankly, I still think we have little chance to win. We do need your help.";
    myMsg[3] = "Kid : Of course I'm at your side.";
    myMsg[4] = "Senior Fairy : Thank you. This energy piece may be useful for you, please accept it.";
    messageLength = 5;
}
else
{
    myMsg[0] = "Senior Fairy : Please let peace restored once again. ";
    messageLength = 1;
}