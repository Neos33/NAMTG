if(instance_number(obj_specialBlock6) > 0)
{
    myMsg[0] = "Kid : Another fairy?"
    myMsg[1] = "Lovely Fairy : How rude you are! That's how human greetings?";
    myMsg[2] = "Kid : Well, I apologize. Why are you stay in this tower.";
    myMsg[3] = "Lovely Fairy : Most of our compatriots are put into jail in this tower. Our lead pretend to obey the evil force, but is seeking a chance to rescue us. Please help us, sodier!";
    myMsg[4] = "Kid : I would like to, but what I can do for help?";
    myMsg[5] = "Lovely Fairy : Actually, our lead is already in action, but we don't want to see her fighting alone. Have you seen the block at left side? ";
    myMsg[6] = "Kid : Sure, they look different.";
    myMsg[7] = "Lovely Fairy : Normal bullet will not take effect on them. But if you can gather more power and shoot a more powerful bullet, you can destroy them.";
    if(global.special[7])
    {
        myMsg[8] = "Kid : Let me have a try.";
    }
    else
    {
        myMsg[8] = "Kid : Seems I need to find the way to concentrate my power first.";
    }
    messageLength = 9;
}
else
{
    myMsg[0] = "Lovely Fairy : Thank you Kid. You are our hero.";
    messageLength = 1;
}