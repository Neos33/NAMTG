depth = 10000000000;
name = "Desperate Gay II";
if(!global.special[12])
{
    myMsg[0] = "Desperate Gay II : I'm gonna to die. Am gonna to die. Gonna to die. To die. Die.";
    myMsg[1] = "Kid : ...";
    messageLength = 2;
    global.gayEndingStep = 0;
}
else if(!global.clearItem[6] && !global.clearItem[7])
{
    myMsg[0] = "Desperate Gay II : Re..re..re.. RENEL TREASURE! Where you get this?";
    myMsg[1] = "Kid : Who knows.";
    myMsg[2] = "Desperate Gay II : This is our spirit resource. Can you offer it to us?";
    myMsg[3] = "Kid : Maybe I can.";
    myMsg[4] = "Desperate Gay II : You are really Cool. Please accept our small gift, I think that may help you.";
    messageLength = 5;
    global.gayEndingStep = 0;
}
else
{
    global.gayEndingStep = 0;
}