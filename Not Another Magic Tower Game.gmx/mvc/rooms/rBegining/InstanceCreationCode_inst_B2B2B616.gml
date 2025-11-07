if(global.story[7])
{
    instance_destroy();
}
else if(global.story[6])
{
    fairy = instance_create(x ,y,obj_specialnpc1);
    fairy.myMsg[0] = "Kid: Is this your notebook?";
    fairy.myMsg[1] = "Fairy: Oh, where did you find it? You.. have watched it?";
    fairy.myMsg[2] = "Kid: Not yet. If possible I would like to..";
    fairy.myMsg[3] = "Fairy: That's enough. I've urgent things to do, see you later.";
    fairy.myMsg[4] = "Kid: ...";
    fairy.myMsg[5] = "Kid tears off the last page of the note without fairy's knowledge."
    fairy.messageLength = 6;
    instance_destroy();
}

myMsg[0] = "Fairy: Go!";
myMsg[1] = "Kid: ...(you blocked my way to the green key. Fxxk!)"
messageLength = 2;