int StartingConditional()
{
    if(GetGlobalNumber("k1r_paztourney") == 3 && GetGender(GetFirstPC()) == GENDER_MALE) { return TRUE;  }
    return FALSE;
}