int StartingConditional()
{
    if(GetGlobalNumber("k1r_paztourney") == 3 && GetGender(GetFirstPC()) == GENDER_FEMALE) { return TRUE;  }
    return FALSE;
}