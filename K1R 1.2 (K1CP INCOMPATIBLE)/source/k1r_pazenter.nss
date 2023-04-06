void main()
{
    object oPC = GetFirstPC();
    TakeGoldFromCreature(500, oPC);
    SetGlobalNumber("k1r_paztourney", 2);
}