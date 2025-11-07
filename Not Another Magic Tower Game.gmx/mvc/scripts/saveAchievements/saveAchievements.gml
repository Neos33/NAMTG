    var f,tem;
f = file_bin_open("achievements",1);

for(i = 0; i < 300; i+=1)
{
    file_bin_write_byte(f,global.achievements[i]);
}

file_bin_close(f);
