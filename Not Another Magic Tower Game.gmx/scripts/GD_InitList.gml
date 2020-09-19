var fname, f, r, spd, size;
fname = argument0;
r = argument1;
spd = argument2;

global.GDList = ds_list_create();
f = file_text_open_read(fname);
while(!file_text_eoln(f))
{
 ds_list_add(global.GDList, file_text_read_real(f));
}
size = ds_list_size(global.GDList);

room_set_width(r, 96 + spd * size);
