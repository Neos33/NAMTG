var f;
if(file_exists("achievements"))
{
    f = file_bin_open("achievements",0);
    for(i = 0; i < 300; i+=1)
    {
    global.achievements[i] = file_bin_read_byte(f);
    }
    file_bin_close(f);
}

