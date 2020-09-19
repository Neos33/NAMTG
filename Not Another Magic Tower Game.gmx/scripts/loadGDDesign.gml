var filename;

filename = argument0;
if(!file_exists(filename))
    exit;
f = file_text_open_read(filename);
while(!file_text_eoln(f))
{
    instance_create(file_text_read_real(f),file_text_read_real(f),file_text_read_real(f));
}
file_text_close(f);
