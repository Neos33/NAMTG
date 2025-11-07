if(flash=0){

//flashobject(���̓_�Ŏ���,���v�̓_�ŉ�)�ŊȒP�ɓ_�ŏ������ł��܂�
//�_�Œ��͎����I��flash=1�ƂȂ�̂Ŗ��G������ȒP�ł�
//���̏ꍇ�A10step�̊Ԋu��6��_�ł��邱�ƂɂȂ�܂�

flashobject(10,6)

sound_fix(sndBossHit)
health-=1
with(other)instance_destroy()

if(health=0){
instance_destroy()
with(blockNotVis)instance_destroy()
}

}

