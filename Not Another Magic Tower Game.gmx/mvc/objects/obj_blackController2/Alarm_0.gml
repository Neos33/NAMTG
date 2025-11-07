if(black.image_alpha > 0)
{
    black.image_alpha -= 0.01;
    alarm[0] = 1;
}
else
{
    message_add("Kid : WTF! A fairy?");
    message_add("Fairy : How dare you.. Well. You must be confused with the situation right now.");
    message_add("Kid : Exactly.");
    message_add("Fairy : You are the chosen one who has to fight with the great evil lived in the magic tower.");
    message_add("Kid : ...");
    message_add("Fairy : As you may see, the great evil returns and monsters gathered again.");
    message_add("Fairy : I have no combat skill, so what I can do is providing information that can help you as far as I know.")
    message_add("Fairy : It's your mission to break up the evils. Our great warrior! Please fulfill your destiny and make everything back to normal.");
    message_add("Kid : I got it. (sigh, no zuo no die)");
    player.frozen = false;
    with(black)
    {
        instance_destroy();
    }
    instance_destroy();
}   

