int StartingConditional()
{
    object oCreature = GetObjectByTag("k1r_cs-32");
//    SendMessageToPC(GetFirstPC(), "Fired " + IntToString(GetLocalBoolean(oCreature, 50)) + " " + IntToString(GetGlobalNumber("k1r_paztourney")));

    if(GetLocalBoolean(oCreature, 40) != 0 && GetLocalBoolean(oCreature, 50) != 0 && GetGlobalNumber("k1r_paztourney") != 7) { return TRUE; }//SendMessageToPC(GetFirstPC(), "Fired"); }
    return FALSE;
}