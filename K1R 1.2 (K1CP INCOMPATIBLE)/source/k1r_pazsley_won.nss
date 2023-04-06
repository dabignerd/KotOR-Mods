int StartingConditional()
{
    int iLocal = GetGlobalNumber("k1r_paz_chadra");
    if(iLocal == 0) { return TRUE; }
//    SendMessageToPC(GetFirstPC(), "Chadra Fan: " + IntToString(iLocal));
    return FALSE;
}