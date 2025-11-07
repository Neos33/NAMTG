//Ctrl+M ��BGM�̗L����؂�ւ��邱�Ƃ��ł��܂�
//�Z�[�u����΂��̐ݒ�͈����p����܂�
//�ϋv�ȂǂŐ�΂�BGM�𗬂������ꍇ�́A
//�T���v���{�X�̂悤��BGM��Đ�����^�C�~���O����点�΂���
if(keyboard_check(vk_control) == true){

sound_stop_all();
if(global.music=0){global.music=1
}else{
global.music=0
}
}

