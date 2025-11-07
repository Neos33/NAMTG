with(obj_spaceNoteBoard)
{
    msg[0] = "I'm proud of you";
    emote = true;
    emoteObj = obj_kappaPride;
    emoteX = (string_length(msg[0]))*string_width(string_hash_to_newline("A")) + 12;
    emoteY = -12;
    emotePos = string_length(msg[0]) - 1;
    msgLen = 1;
}

