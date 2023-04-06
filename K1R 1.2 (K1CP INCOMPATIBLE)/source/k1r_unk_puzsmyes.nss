int StartingConditional()
{
    if(GetGlobalNumber("UNK_PUZS_STATE") == 14 && GetGlobalNumber("UNK_PUZM_STATE") == 14) { return TRUE; }
    return FALSE;
}