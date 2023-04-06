void main()
{
    if(GetGlobalNumber("k1r_paztourney") == 2 && GetLocalBoolean(GetObjectByTag("k1r_paz_org"), 38) == 0)
    {
        SetLocalBoolean(GetObjectByTag("k1r_paz_org"), 39, 1);
        DelayCommand(14.5, SetLocalBoolean(GetObjectByTag("k1r_paz_org"), 38, 1));
        DelayCommand(15.0, AssignCommand(GetFirstPC(), ActionStartConversation(GetObjectByTag("k1r_paz_org"), "", 0, CONVERSATION_TYPE_CINEMATIC, 1)));
    }
}