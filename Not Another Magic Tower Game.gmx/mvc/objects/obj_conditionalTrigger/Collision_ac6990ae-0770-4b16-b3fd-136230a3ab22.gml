if(ptrg == 0 || global.trigger[ptrg])
{
    if(!global.trigger[trg]) {
        global.trigger[trg] = true;
        instance_destroy();
    }
}

