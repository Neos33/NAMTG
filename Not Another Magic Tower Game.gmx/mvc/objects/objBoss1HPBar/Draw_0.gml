/*if !can_hit{
    timer+=1;
    if timer<50{
        percentage+=0.02;
    }
    if timer=50{
        timer=0;
        can_hit=1;
        percentage=1;
    }
}
if can_hit{
    percentage = boss_obj.nowHp/boss_obj.maxHp; //boss��ǰ����ֵ�ٷֱ�
}
if instance_exists(boss_obj){ //�ж�boss_obj�Ƿ�����ڷ�����
    draw_set_color(color_full);  //���û�����ɫΪ��Ѫʱ�����ɫ
    draw_set_alpha(percentage); //���û��Ʋ�͸����,����ֵԽ��,��͸����Խ��
    draw_rectangle(draw_x,draw_y,draw_x+width*percentage,draw_y+height,0); //����Ѫʱ�����ɫ����Ѫ��
    draw_set_color(color_empty); //���û�����ɫΪ��Ѫʱ�����ɫ
    draw_set_alpha(1-percentage);  //���û��Ʋ�͸����,����ֵԽ��,��͸����Խ��
    draw_rectangle(draw_x,draw_y,draw_x+width*percentage,draw_y+height,0); //�ÿ�Ѫʱ�����ɫ����Ѫ��
}
draw_set_alpha(1); //��ԭ�������Ʋ�͸����
draw_set_color(c_black); //��ԭ����������ɫ


/* */
/*  */
