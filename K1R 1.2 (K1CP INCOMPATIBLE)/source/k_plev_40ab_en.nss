void main()
{
    object oPC    = GetFirstPC();
    object oPM1   = GetObjectByTag("Carth");
    object oPM2   = GetObjectByTag("Bastila");
    object oSith3 = GetObjectByTag("sithguard3");
    object oSith4 = GetObjectByTag("sithguard4");
    object oSith5 = GetObjectByTag("sithguard5");
    object oSound = GetObjectByTag("lev40_alarm");
    object oHurka = GetObjectByTag("k1r_hurka");

    int iCheck = GetGlobalNumber("K1R_HURKA_STATE");

    ExecuteScript("k_plev_40ab_en_o", OBJECT_SELF); //Plays the old onenter to make sure everything BioWare wanted to do is done.

//    SendMessageToPC(GetFirstPC(), "Hurka: " + IntToString(iCheck));

    if(iCheck > 2) //Checks to see if the Hurka plot has been resolved.
    {
        DestroyObject(oHurka);
        SoundObjectSetVolume(oSound, 32);
        ChangeToStandardFaction(oSith3, STANDARD_FACTION_HOSTILE_1);
        ChangeToStandardFaction(oSith4, STANDARD_FACTION_HOSTILE_1);
        ChangeToStandardFaction(oSith5, STANDARD_FACTION_HOSTILE_1);
    }

    if(iCheck == 2 && GetEnteringObject() == oPC) 
    {
        // Checks to see if the Hurka plot has been started. Eventually this will be set back to false to
        // avoid any complications that would occur with this onenter after the Hurka situation has been resolved.
        ChangeToStandardFaction(oSith3, STANDARD_FACTION_NEUTRAL);
        ChangeToStandardFaction(oSith4, STANDARD_FACTION_NEUTRAL);
        ChangeToStandardFaction(oSith5, STANDARD_FACTION_NEUTRAL);

        object oHurka = CreateObject(OBJECT_TYPE_CREATURE,"k1r_hurka_2", GetLocation(GetObjectByTag("k1r_hurka_walk01"))); //Spawns Hurka

        SetPartyLeader(NPC_PLAYER);
        SetSoloMode(TRUE);

        SetGlobalFadeOut(0.0, 1.0);

        ExecuteScript("k1r_40ab_mve", OBJECT_SELF); 	
    }
}