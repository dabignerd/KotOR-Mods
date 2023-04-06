void main()
{
    object oPC = GetFirstPC();
    TakeGoldFromCreature(500, oPC);
    SetGlobalNumber("k1r_paztourney", 3);
    AddJournalQuestEntry("k1r_paztourney", 1,1);
    SetGlobalNumber("k1r_pazprelimwon", 0);

    ExecuteScript("k1r_pazdete", OBJECT_INVALID);
}