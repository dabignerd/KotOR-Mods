void DuD(object oPC, object oK1r_hurka, location location5, location location1, location location3);

void main()
{
    SetPartyLeader(-1);
    object oPC = GetFirstPC();

    object oLev40_alarm = GetObjectByTag("lev40_alarm", 0);
    object oK1r_hurka = GetObjectByTag("k1r_hurka", 0);

    SoundObjectSetVolume(oLev40_alarm, 0);

    location location1 = GetLocation(GetObjectByTag("k1r_hurka_walk02", 0));
    location location3 = GetLocation(GetObjectByTag("k1r_hurka_walk04", 0));
    location location5 = GetLocation(GetObjectByTag("k1r_hurka_walk03", 0));

//    RemovePartyMember(0);
//    SpawnAvailableNPC(0, location5);

    CreateObject(OBJECT_TYPE_CREATURE, "k1r_plev_carth", location3);
    CreateObject(OBJECT_TYPE_CREATURE, "k1r_plev_bastila", location3);
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
            AssignCommand(GetObjectByTag("LevCarth"), ActionEquipItem(oItem1, iCount, TRUE));
        }
    }

    DelayCommand(0.2, DuD(oPC, oK1r_hurka, location5, location1, location3));
}

void DuD(object oPC, object oK1r_hurka, location location5, location location1, location location3)
{
    RemovePartyMember(2);
    RemovePartyMember(0);
    AssignCommand(GetObjectByTag("Carth", 0), ActionJumpToLocation(Location(Vector(75.79, 46.62, 3.00), 0.0)));
    AssignCommand(GetObjectByTag("Bastila", 0), ActionJumpToLocation(Location(Vector(75.79, 46.62, 3.00), 0.0)));

    object oCarth = GetObjectByTag("LevCarth");
    object oBastila = GetObjectByTag("LevBastila", 0);

    AssignCommand(oPC,      JumpToLocation(location1));
    AssignCommand(oCarth,   JumpToLocation(location3));
    AssignCommand(oBastila, JumpToLocation(location5));

    AssignCommand(oK1r_hurka, ActionDoCommand(ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0)));
}