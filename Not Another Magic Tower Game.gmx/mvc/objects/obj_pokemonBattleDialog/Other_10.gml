//enqueue
ds_list_add(q, msg);
msgAlpha = 0;
msgGap += 32;

qLen = ds_list_size(q);
if(qLen > 5)
{
    ds_list_delete(q,0);
}

