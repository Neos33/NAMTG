global.testMode=true;
cleanmem_init(0);
music_init();
global.savenum = 1;//�Z�[�u�t�@�C���ԍ�
global.difficulty = 3;//�Q�[���̓�Փx�i�ȒP�F�O���R�F����j
global.room_caption_def = "Not Another Magic Tower Game";//�f�o�b�O�p

//���S���ƌo�ߎ���
global.death[1] = 0;
global.death[2] = 0;
global.death[3] = 0;
global.timestep[1] = 0;
global.timestep[2] = 0;
global.timestep[3] = 0;

//���S���ƌo�ߎ��Ԃ̓ǂݍ���
loadDeathTime();

memory_count = 0;

// TODO transition_define(101, "scr_tr_squeeze_right");
// TODO transition_define(102, "scr_tr_bars_both");
// TODO transition_define(103, "scr_tr_diagonal1_in");
// TODO transition_define(104, "scr_tr_blocks");
// TODO transition_define(105, "scr_tr_pixelation");
//transition_define(106, "scr_tr_mirage");

fpscount = 0;

pauseon = false;
pauseback = noone;

