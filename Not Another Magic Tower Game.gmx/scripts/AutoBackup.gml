if(!file_exists("save1"))
{
    exit;
}
if(!directory_exists(working_directory + "/BackUps"))
{
    directory_create(working_directory + "/BackUps");
}
_nSaveName = working_directory + "/BackUps/AutoBackup(S)";
_nDeathName = working_directory + "/BackUps/AutoBackup(D)";
_nExtraName = working_directory + "/BackUps/AutoBackup(E)";
if(file_exists(_nSaveName))
{
    file_delete(_nSaveName);
}
if(file_exists(_nDeathName))
{
    file_delete(_nDeathName);
}
if(file_exists(_nExtraName))
{
    file_delete(_nExtraName);
}
file_copy("save1", _nSaveName);
file_copy("DeathTime", _nDeathName);
if(file_exists("extraSave"))
{
    file_copy("extraSave", _nExtraName);
}
