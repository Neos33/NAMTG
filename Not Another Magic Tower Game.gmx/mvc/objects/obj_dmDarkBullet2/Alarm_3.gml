size = ds_list_size(xList);
if(size == fullSize)
{
    ds_list_delete(xList,0);
    ds_list_delete(yList,0);
}
ds_list_add(xList,x);
ds_list_add(yList,y);
alarm[3] = gap;

