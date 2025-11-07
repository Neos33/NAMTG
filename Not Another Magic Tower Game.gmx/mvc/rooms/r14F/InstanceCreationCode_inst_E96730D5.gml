depth = 10000000000;
if(!global.special[11])
{
    myMsg[0] = "Kid : Oh my god. I told you to run, why are you still here.";
    myMsg[1] = "Thief II : Excuse me, but have we met before?";
    myMsg[2] = "Kid : Don't you rememeber? We met at 10F and then you open the basement entrance for me at 0F.";
    myMsg[3] = "Thief II : Oh, that could be my brother. I am so incompetent, if not because I lost the saint cross, I can at least do something...";
    myMsg[4] = "Kid : Saint cross? Maybe I can take care of it when I find it.";
    myMsg[5] = "Thief II : Thank you. Shamely I cannot give you more useful info in finding it.";
    myMsg[6] = "Kid : That's ok. I'll try to find it.";
    messageLength = 7;
}
else if(!global.clearItem[8])
{
    myMsg[0] = "Thief II : Wow, it's the saint cross!";
    myMsg[1] = "Kid : I know it should belong to you. Now let me pass it to its origin owner.";
    myMsg[2] = "Thief II : Let me try to lead its power. Here's little thanks for you.";
    messageLength = 3;
}
else
{
    myMsg[0] = "Thief II : Hmm....";
    messageLength = 1;
}