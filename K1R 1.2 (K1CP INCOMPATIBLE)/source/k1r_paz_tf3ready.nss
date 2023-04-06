int StartingConditional()
{
//    SendMessageToPC(GetFirstPC(), "Value: " + IntToString(GetGlobalNumber("k1r_paz_speconts")));
    if(GetLocalBoolean(GetObjectByTag("k1r_irog"), 55) == 0 ) { return TRUE; }
    return FALSE;
}