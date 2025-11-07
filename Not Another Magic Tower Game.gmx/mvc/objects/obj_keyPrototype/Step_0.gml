if point_in_rectangle(mouse_x, mouse_y, x, y, x+32, y+32)
{
    if mouse_check_button_pressed(mb_left)
    {
        print("--------------------------------------")
        print("object: ", object_get_name(object_index))
        print("type: ", type);
        print("ind: ", ind);
        print("ammount: ", ammount);
        print("--------------------------------------")
    }

}

