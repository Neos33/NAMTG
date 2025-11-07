timer+=dt if (timer>=1) {timer-=1
    f1=f1*1.1+2
    if (f1>10) f2=f2*1.1+2
    if (f1>150) f3=f3*1.1+2
    if (f3>800) instance_destroy()
}

