var s_prev, s_next, s_width, s_height, fraction;
s_prev = argument0; 
s_next = argument1; 
s_width = argument2;
s_height = argument3;
fraction = argument4; 

var block_size, cx, cy, xx, yy, index, _pos;
block_size = 16; 
cx = s_width / block_size; 
cy = s_height / block_size;

if (fraction <= 0) {
    global.__tr_block_positions = ds_list_create();
    for (yy = 0; yy < cy; yy += 1) {
        for (xx = 0; xx < cx; xx += 1) {
            ds_list_add(global.__tr_block_positions, xx + yy * cx);
        }
    }
    ds_list_shuffle(global.__tr_block_positions);
}

draw_surface(s_prev, 0, 0);

index = 0;
repeat (ds_list_size(global.__tr_block_positions) * fraction) {
    _pos = ds_list_find_value(global.__tr_block_positions, index);
    xx = _pos mod cx;
    yy = _pos div cx;
    index += 1;
    draw_surface_part(s_next, xx*block_size, yy*block_size, block_size, block_size, xx*block_size, yy*block_size);
}


if (fraction >= 1) {
    ds_list_destroy(global.__tr_block_positions);
}
