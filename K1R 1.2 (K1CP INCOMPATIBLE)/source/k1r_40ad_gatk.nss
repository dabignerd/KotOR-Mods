void DuD()
{
    ChangeToStandardFaction(GetObjectByTag("k1r_hurka"),  STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(GetObjectByTag("k1r_sithc"),  STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(GetObjectByTag("k1r_sith01"), STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(GetObjectByTag("k1r_sith02"), STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(GetObjectByTag("k1r_sith03"), STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(GetObjectByTag("k1r_sith04"), STANDARD_FACTION_HOSTILE_1);

    SetGlobalNumber("K1R_HURKA_STATE", -1);
}

void main()
{
    ExecuteScript("k1r_plev_solofix", OBJECT_SELF);
    DelayCommand(0.5, DuD());
}