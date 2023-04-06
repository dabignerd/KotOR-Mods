void main()
{
    if ((GetGlobalBoolean("UNK_COLDOFF") == 0))
    {
        object oNPC;
        int int1 = 0;
        while ((int1 < GetPartyMemberCount()))
        {
            oNPC = GetPartyMemberByIndex(int1);
            AssignCommand(OBJECT_SELF, ApplyEffectToObject(0, EffectDamage(10, 32, 0), oNPC, 0.0));
            int1++;
        }
    }
//    DelayCommand(6.0, ExecuteScript("k_punk_44ab_hb", OBJECT_SELF));
}