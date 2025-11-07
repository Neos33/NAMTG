//�����Ȃ����������Ȃ��u���b�N

if (!visible) {
    if (distance_to_object(player)<2 || distance_to_object(player2)<2) {
        sound_fix(sndBlockChange);
        visible=1;
    }
    if (instance_number(player)=0 && instance_number(player2)=0){
        instance_destroy()
    }
}

