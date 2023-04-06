void main()
{
    SetGlobalNumber("k1r_paztourney", 7);
    int iGold = StringToInt(GetGlobalString("k1r_paz_pot"));
    GiveGoldToCreature(GetFirstPC(), iGold);
}