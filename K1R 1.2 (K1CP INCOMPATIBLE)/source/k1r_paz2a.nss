int StartingConditional()
{
    if(GetGlobalNumber("k1r_paztourney") == 5 && GetGlobalNumber("k1r_inprelim") == 1) { return TRUE;  }
    return FALSE;
}