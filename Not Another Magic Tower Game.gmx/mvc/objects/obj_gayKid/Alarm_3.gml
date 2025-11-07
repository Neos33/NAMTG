pass = get_string("Enter the password:", "");
if(pass == "bb6b6b6bb6b")
{
    obj_gayDoor.alarm[0] = 10;
    alarm[2] = 30;
}
else
{
    message_add("Foolish Kid! Die!");
    alarm[4] = 2;
}

