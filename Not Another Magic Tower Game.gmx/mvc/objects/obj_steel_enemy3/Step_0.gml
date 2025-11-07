
if(HP=0)
{
    audio_playsound(sndDeath)
    instance_destroy()
}

/// Wrap
var _margin = 4;
x = modwrap(x, _margin, 800 - _margin);
y = modwrap(y, _margin, 608 - _margin);

