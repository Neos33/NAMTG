image_alpha -= alpspd;
image_xscale -= xsclspd;
image_yscale -= ysclspd;
if image_xscale <= 0 or image_yscale<=0 or image_alpha<=0 instance_destroy();

