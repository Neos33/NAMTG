if asd>=360 {image_blend=make_color_hsv(random(255),255*0.7,255);asd=0}
asd+=bpf*90
image_alpha=sin(degtorad(asd))/3

