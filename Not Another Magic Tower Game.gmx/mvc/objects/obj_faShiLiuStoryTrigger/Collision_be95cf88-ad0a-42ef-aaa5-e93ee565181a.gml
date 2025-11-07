if(triggered)
    exit;
triggered = true;
for(var i = 0; i < messageLength; i+= 1) {
    message_add(myMsg[i]);
}
global.story[ind] = true;
alarm[0] = 5;


