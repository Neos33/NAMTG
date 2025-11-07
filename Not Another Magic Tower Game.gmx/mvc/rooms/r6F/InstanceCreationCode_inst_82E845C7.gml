if(global.maxFloor < 8)
{
    myMsg[0] = "Old Gay : I can tell you a secret.";
    myMsg[1] = "Kid : I'm all ears. "
    myMsg[2] = "Old Gay : 7F is made by Koala";
    myMsg[3] = "Kid : Oh my fucking god!";
    myMsg[4] = "Old Gay : If you can reach 8F, I will tell you more.";
    messageLength = 5;
}
else if(!global.special[12])
{
    myMsg[0] = "Old Gay : Congratulations! Finally you've conquered 7F.";
    myMsg[1] = "Kid : So it's time you fullfil your promise.";
    myMsg[2] = "Old Gay : Well, what I can tell you is there's still a big secret in 7F. I'm pretty sure you still haven't figure it out.";
    myMsg[3] = "Kid : Any more details?";
    myMsg[4] = "Old Gay : Sorry, the author doesn't let me say more, or he will remove me via ctrl + mouse right button.";
    myMsg[5] = "Kid : ......";
    messageLength = 6;
}
else
{
    myMsg[0] = "Old Gay : Nice dude. I know nothing more to help you. Good luck.";
    messageLength = 1;
}