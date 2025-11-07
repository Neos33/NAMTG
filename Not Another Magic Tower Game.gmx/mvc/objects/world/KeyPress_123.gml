
if(!global.testMode) exit;
if(global.skipMonsters == true)
{
    global.skipMonsters = false;
    show_message("Battle Skipping Disabled");
}   
else
{
    global.skipMonsters = true;
    show_message("Battle Skipping Enabled")
}


