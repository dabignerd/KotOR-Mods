int StartingConditional()
{
    int iResult = GetGlobalNumber("K1R_JOLEE_FIGHT");
    if (iResult)
        SetGlobalNumber("K1R_JOLEE_FIGHT", 2);

    return iResult;
}