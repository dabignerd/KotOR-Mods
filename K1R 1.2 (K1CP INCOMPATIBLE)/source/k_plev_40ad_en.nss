void DuD(object oPC, object oBastila, object oCarth, location lDesk, location lHurka, location lPC, location lPM1, location lPM2)
{
        SetGlobalFadeOut(0.0, 0.0);

        object oDesk  = CreateObject(OBJECT_TYPE_PLACEABLE, "k1r_desk",  lDesk);
        object oHurka = CreateObject(OBJECT_TYPE_CREATURE,  "k1r_hurka_3", lHurka); //Spawns Hurka

        AssignCommand(oPC,      JumpToLocation(lPC));
        DelayCommand(12.0, AssignCommand(oBastila, JumpToLocation(lPM2)));
        DelayCommand(12.0, AssignCommand(oCarth,   JumpToLocation(lPM1)));

//        DelayCommand(0.5, AssignCommand(oBastila, JumpToLocation(lPM2)));
//        DelayCommand(1.0, AssignCommand(oBastila, JumpToLocation(lPM2)));
//        DelayCommand(1.5, AssignCommand(oBastila, JumpToLocation(lPM2)));
//        DelayCommand(2.0, AssignCommand(oBastila, JumpToLocation(lPM2)));
//        DelayCommand(2.5, AssignCommand(oBastila, JumpToLocation(lPM2)));
//        DelayCommand(3.0, AssignCommand(oBastila, JumpToLocation(lPM2)));

//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectMovementSpeedDecrease(47), oCarth,   40.0);
//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectMovementSpeedDecrease(45), oBastila, 20.0);

        DelayCommand(0.5, AssignCommand((GetObjectByTag("k1r_sithc")), ActionDoCommand(ActionStartConversation(oPC))));
}

void main()
{
    object oPC=GetFirstPC();
    object oCarth = GetObjectByTag("Carth");
    object oBastila = GetObjectByTag("Bastila");

    int iCheck =  GetGlobalNumber("K1R_HURKA_STATE");

    location lDesk  = Location(Vector(174.166,54.98,3.0), 177.81894);

    location lHurka = Location(Vector(148.40,54.96,3.00), 357.99384);
    location lPC    = Location(Vector(146.90,54.96,3.00), 357.99384);
    location lPM1   = Location(Vector(145.40,54.96,3.00), 357.99384);
    location lPM2   = Location(Vector(143.90,54.96,3.00), 357.99384);

    ExecuteScript("k_plev_40ad_en_o", OBJECT_SELF); 	

    if(iCheck == 3 && GetEnteringObject() == GetFirstPC() ) 
    { 
        ChangeFactionByFaction(1, 5);
        SetPartyLeader(NPC_PLAYER);
        SetSoloMode(TRUE);

        RemoveFromParty(oCarth);
        RemoveFromParty(oBastila);

        AssignCommand(oCarth,   ActionJumpToLocation(Location(Vector(183.14, 67.54, 3.0), 0.0)));
        AssignCommand(oBastila, ActionJumpToLocation(Location(Vector(183.14, 67.54, 3.0), 0.0)));

        object oPM1 = CreateObject(OBJECT_TYPE_CREATURE, "k1r_plev_carth",   lPM1);//GetObjectByTag("LevCarth");
        object oPM2 = CreateObject(OBJECT_TYPE_CREATURE, "k1r_plev_bastila", lPM2);//GetObjectByTag("LevBastila");

        int iCount;
        for(iCount = 0; iCount <= 10; iCount++)
        {
            object oItem = GetItemInSlot(iCount, GetObjectByTag("Carth", 0));
            if(GetIsObjectValid(oItem))
            {
                string sTag = GetTag(oItem);
                object oItem1 = CreateItemOnObject(sTag, GetObjectByTag("LevCarth"), 1);
                AssignCommand(GetObjectByTag("LevCarth"), ActionEquipItem(oItem1, iCount, TRUE));
            }
        }
        for(iCount = 0; iCount <= 10; iCount++)
        {
            object oItem = GetItemInSlot(iCount, GetObjectByTag("Bastila", 0));
            if(GetIsObjectValid(oItem))
            {
                string sTag = GetTag(oItem);
                object oItem1 = CreateItemOnObject(sTag, GetObjectByTag("LevBastila"), 1);
                AssignCommand(GetObjectByTag("LevBastila"), ActionEquipItem(oItem1, iCount, TRUE));
            }
        }

        DelayCommand(0.5, DuD(oPC, oBastila, oCarth, lDesk, lHurka, lPC, lPM1, lPM2));
    }
}