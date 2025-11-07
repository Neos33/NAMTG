if(!bargain)
{
    message_add("Gay DW(Merchant): Nice job buddy~");
    message_add("Gay DW(Merchant): And note that, you can only use dynamite to kill those you can fight with.");
    message_add("Gay DW(Merchant): You can also cancel the usage of dynamite by pressing mouse right button.");
    message_add("Gay DW(Merchant): And of couse, dynamite won't take effect for boss level monsters.");
    message_add("Gay DW(Merchant): You can define the button to use dynamite in Controls Settings(default 'C').");
    message_add("Gay DW(Merchant): Since this is the first time you buy the dynamite, I can provide a super discount. 50 HP for this one, super cheap right?");
    bargain = true;
    alarm[11] = 5;
}
else if(!bargain2)
{
    if(!is_message())
    {
        if(show_question("Use 50 HP to exchange a dynamite?"))
        {
            hpExchange = 50;
            global.dynamiteNum += 1;
            global.dynamitePurchaseTimes += 1;
            type = 1;
            alarm[6] = 1;
            dealMsg = "HP-" + string(hpExchange) + ",Dynamite+1";
        }
        else
        {  
            message_add("Gay DW(Merchant): Oh..What a shame..Then take a look at other services.");
        }
        bargain2 = true;
        alarm[11] = 3;
    }
    else
    {
        alarm[11] = 1;
    }
}
else
{
    if(!is_message())
    {
        event_user(1);
    }
    else
    {
        alarm[11] = 1;
    }
}

