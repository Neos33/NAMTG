sound_play(sndFire1);
for(var i = 0; i < 7; i += 1)
{
    var qte = instance_create(400 + 40 * (i - 3), 352, obj_asQTEElement);
    ds_queue_enqueue(qteQueue, qte);
}
instance_create(0,0,obj_asQTECountDown);
alarm[1] = 1;

