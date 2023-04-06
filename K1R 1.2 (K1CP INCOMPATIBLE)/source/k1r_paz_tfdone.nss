int StartingConditional()
{
    object oCreature = GetNearestCreature(CREATURE_TYPE_IS_ALIVE, TRUE, GetFirstPC());
    if(GetLocalBoolean(oCreature, 40) != 0) { return TRUE; }
    return FALSE;
}