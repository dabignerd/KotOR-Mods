int StartingConditional()
{
    if(GetGold(GetFirstPC()) >= 500)
    { return FALSE; }
    return TRUE;
}