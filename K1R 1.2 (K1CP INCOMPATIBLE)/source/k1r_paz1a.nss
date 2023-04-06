int StartingConditional()
{
    if(GetLocalBoolean(GetObjectByTag("k1r_paz_org"), 38) == 0 && GetLocalBoolean(GetObjectByTag("k1r_paz_org"), 39) != 0 && GetGlobalNumber("k1r_paztourney") == 2) { SetLocalBoolean(GetObjectByTag("k1r_paz_org"), 38, 1);return TRUE; }
    return FALSE;
}