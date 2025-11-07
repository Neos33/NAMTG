if(global.attack + ammount >= 150)
{
    with(obj_npc2)
    {
        myMsg[0] = "Old Gay : You did it!"
        myMsg[1] = "Old Gay : I will tell you what I know as promised. There's a monster gallery room exist.";
        myMsg[2] = "Kid : Yes, I've heard of that, but I haven't found it yet.";
        myMsg[3] = "Old Gay : Oh, you know that. Then what I can tell you is that you have to get the gay ending once in the game before you can entering that room."
        myMsg[4] = "Kid : ...";
        messageLength = 5;
    }
}
event_inherited();

