f = file_text_open_write(fname);
while(!ds_queue_empty(queue))
{
 val = ds_queue_dequeue(queue);
 global.test = val;
 file_text_write_real(f, val);
}
file_text_writeln(f);
file_text_close(f);
ds_queue_destroy(queue);

