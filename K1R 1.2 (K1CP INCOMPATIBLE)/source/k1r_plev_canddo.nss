int StartingConditional()
{
    int iResult = GetLocalBoolean(GetObjectByTag("lev40_candship"), 10);
    if(iResult == FALSE)
    {
        return FALSE;
    }
    return TRUE;
}