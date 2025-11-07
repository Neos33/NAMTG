if(FMODInstanceIsPlaying(bgm))
{
 pos = FMODInstanceGetPosition(bgm);
 ds_queue_enqueue(queue, pos);
 global.test1 = pos;
 alarm[0] = 1;
}
else
{
 alarm[1] = 1;
}

