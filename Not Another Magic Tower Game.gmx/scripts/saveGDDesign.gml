var filename, fname;

filename = argument0;
//global.test = filename;
f = file_text_open_write(filename);
with(obj_GD_Block_Prototype)
{
    file_text_write_real(other.f, x);
    file_text_write_real(other.f, y);
    file_text_write_real(other.f, object_index);
}
with(obj_GD_KillerPrototype)
{
    file_text_write_real(other.f, x);
    file_text_write_real(other.f, y);
    file_text_write_real(other.f, object_index);
}
with(obj_GD_EffectPrototype)
{
    file_text_write_real(other.f, x);
    file_text_write_real(other.f, y);
    file_text_write_real(other.f, object_index);
}
with(obj_GD_Platform)
{
    file_text_write_real(other.f, x);
    file_text_write_real(other.f, y);
    file_text_write_real(other.f, object_index);
}
with(obj_GD_TransformerPrototype)
{
    file_text_write_real(other.f, x);
    file_text_write_real(other.f, y);
    file_text_write_real(other.f, object_index);
}
file_text_writeln(f);
file_text_close(f);

