if(global.defense + ammount >= 135)
{
    with(obj_npc1)
    {
        myMsg[0] = "Old Gay : You did it!"
        myMsg[1] = "Old Gay : I will tell you what I know as promised.";
        myMsg[2] = "Kid : There exists huge secret in 5F. Investigate carefully to find it out.";
        messageLength = 3;
    }
}
event_inherited();

