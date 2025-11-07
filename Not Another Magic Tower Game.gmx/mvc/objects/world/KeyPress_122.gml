
if(!global.testMode) exit;
if(global.godmod)
{
    global.godmod = false;
    show_message("God mode deactivated.");
}
else
{
    global.godmod = true;
    show_message("God mode activated. ");
}



