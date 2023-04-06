#include "populate"
void Rotate_NPCS(string sComm);

void main()
{
    if(GetLoadFromSaveGame() == FALSE)
    {
        if(GetEnteringObject() == GetFirstPC())
        {
            int iSu = 0;

            object osyk1 = CreateObject(OBJECT_TYPE_CREATURE, "k1r_sykwoman", Location(Vector(-80.35, 39.69, 57.50), 290.0), 1);
            object osyk2 = CreateObject(OBJECT_TYPE_CREATURE, "k1r_sykwoman2", Location(Vector(-82.57, 37.95, 57.50), 7.5), 1);

            object otab1 = CreateObject(OBJECT_TYPE_PLACEABLE, "plc_desk2", Location(Vector(-37.55, 14.77, 57.50), 270.0), 1);
            object ocre1 = CreateObject(OBJECT_TYPE_CREATURE, "k1r_paz_org", Location(Vector(-37.43, 15.04, 57.50), 270.0), 1);
//            object ochandra = CreateObject(OBJECT_TYPE_CREATURE, "k1r_pazprelim_5a", Location(Vector(-12.69, -3.31, 57.5), 180.0), 1);
//            SendMessageToPC(GetFirstPC(), "Chadran Fan is present? " + IntToString(GetIsObjectValid(ochandra)));

            object oDoor1 = CreateObject(OBJECT_TYPE_PLACEABLE, "paz_holo_base", Location(Vector(-37.88, 4.9, 59.0), 270.0), 1);

            string sComm1 = "k1r_paz_comment";
            string sComm2 = "k1r_paz_comment1";
            string sComm3 = "k1r_paz_comment2";
            string sComm4 = "k1r_paz_comment3";
            string sComm5 = "k1r_paz_comment4";
            string sComm6 = "k1r_paz_comment5";
            string sComm7 = "k1r_paz_comment6";
            string sComm10 = "k1r_paz_comment9";
            string sComm11 = "k1r_paz_comment0";
/*
            -47.72, 40.97
            -27.77, 40.46
            -14.68, -4.41
            -63.69, -4,11

            -61, 15
            -62, -2
            -39, -12
            -18, -4
            -20, 15

            -27, 20
            -29, 37
            -46, 38
            -48, 20
*/
            int iS = 1;
            int iS1 = 1;

            Populate(iS, -61, -18, -12, 15, sComm1);
            Populate(iS, -61, -18, -12, 15, sComm2);
            Populate(iS, -61, -18, -12, 15, sComm3);
            Populate(iS, -61, -18, -12, 15, sComm4);
            Populate(iS, -61, -18, -12, 15, sComm5);
            Populate(iS, -61, -18, -12, 15, sComm6);
            Populate(iS, -61, -18, -12, 15, sComm7);
            Populate(iS, -61, -18, -12, 15, sComm10);
            Populate(iS, -61, -18, -12, 15, sComm11);

            Populate(iS1, -46, -28, 20, 38, sComm1);
            Populate(iS1, -46, -28, 20, 38, sComm2);
            Populate(iS1, -46, -28, 20, 38, sComm3);
            Populate(iS1, -46, -28, 20, 38, sComm4);
            Populate(iS1, -46, -28, 20, 38, sComm5);
            Populate(iS1, -46, -28, 20, 38, sComm6);
            Populate(iS1, -46, -28, 20, 38, sComm7);
            Populate(iS1, -46, -28, 20, 38, sComm10);
            Populate(iS1, -46, -28, 20, 38, sComm11);

            Rotate_NPCS(sComm1);
            Rotate_NPCS(sComm2);
            Rotate_NPCS(sComm3);
            Rotate_NPCS(sComm4);
            Rotate_NPCS(sComm5);
            Rotate_NPCS(sComm6);
            Rotate_NPCS(sComm7);
            Rotate_NPCS(sComm10);
            Rotate_NPCS(sComm11);

            SetPartyLeader(-1);
            object oPM1 = GetPartyMemberByIndex(1);

            if(GetIsObjectValid(oPM1) == TRUE)
            {
                int iP1 = -1;

/*
                if(IsNPCPartyMember(0)) { iP1 = 0; }
                else if(IsNPCPartyMember(1)) { iP1 = 1; }
                else if(IsNPCPartyMember(2)) { iP1 = 2; }
                else if(IsNPCPartyMember(3)) { iP1 = 3; }
                else if(IsNPCPartyMember(4)) { iP1 = 4; }
                else if(IsNPCPartyMember(5)) { iP1 = 5; }
                else if(IsNPCPartyMember(6)) { iP1 = 6; }
                else if(IsNPCPartyMember(7)) { iP1 = 7; }
                else if(IsNPCPartyMember(8)) { iP1 = 8; }
*/

                if(GetTag(oPM1) == "Bastila")   { iP1 = 0; }
                if(GetTag(oPM1) == "Shadow")    { iP1 = 0; }
                if(GetTag(oPM1) == "Matilda")   { iP1 = 0; }
                if(GetTag(oPM1) == "Canderous") { iP1 = 1; }
                if(GetTag(oPM1) == "Carth")     { iP1 = 2; }
                if(GetTag(oPM1) == "HK-47")     { iP1 = 3; }
                if(GetTag(oPM1) == "Jolee")     { iP1 = 4; }
                if(GetTag(oPM1) == "Juhani")    { iP1 = 5; }
                if(GetTag(oPM1) == "Kay")       { iP1 = 5; }
                if(GetTag(oPM1) == "Mission")   { iP1 = 6; }
                if(GetTag(oPM1) == "T3-M4")     { iP1 = 7; }
                if(GetTag(oPM1) == "Zaalbar")   { iP1 = 8; }

//SendMessageToPC(GetFirstPC(), "PM1 is " + IntToString(iP1));
                SetGlobalNumber("K_PARTY_STORE1", iP1);
                RemovePartyMember(iP1);
//SendMessageToPC(GetFirstPC(), "PM1 has left the party.");
                DestroyObject(oPM1);
//SendMessageToPC(GetFirstPC(), "PM1 has been destroyed");

                SetGlobalBoolean("K_PARTY_STORED", TRUE);
            }

            object oPM2 = GetPartyMemberByIndex(0);
            if(GetIsObjectValid(oPM2) == TRUE)
            {
                int iP2 = -1;
//SendMessageToPC(GetFirstPC(), "PM2 does exist.");

/*
                if(IsNPCPartyMember(0)) { iP2 = 0; }
                else if(IsNPCPartyMember(1)) { iP2 = 1; }
                else if(IsNPCPartyMember(2)) { iP2 = 2; }
                else if(IsNPCPartyMember(3)) { iP2 = 3; }
                else if(IsNPCPartyMember(4)) { iP2 = 4; }
                else if(IsNPCPartyMember(5)) { iP2 = 5; }
                else if(IsNPCPartyMember(6)) { iP2 = 6; }
                else if(IsNPCPartyMember(7)) { iP2 = 7; }
                else if(IsNPCPartyMember(8)) { iP2 = 8; }
*/

                if(GetTag(oPM2) == "Bastila")   { iP2 = 0; }
                if(GetTag(oPM2) == "Shadow")    { iP2 = 0; }
                if(GetTag(oPM2) == "Matilda")   { iP2 = 0; }
                if(GetTag(oPM2) == "Canderous") { iP2 = 1; }
                if(GetTag(oPM2) == "Carth")     { iP2 = 2; }
                if(GetTag(oPM2) == "HK-47")     { iP2 = 3; }
                if(GetTag(oPM2) == "Jolee")     { iP2 = 4; }
                if(GetTag(oPM2) == "Juhani")    { iP2 = 5; }
                if(GetTag(oPM2) == "Kay")       { iP2 = 5; }
                if(GetTag(oPM2) == "Mission")   { iP2 = 6; }
                if(GetTag(oPM2) == "T3-M4")     { iP2 = 7; }
                if(GetTag(oPM2) == "Zaalbar")   { iP2 = 8; }

//SendMessageToPC(GetFirstPC(), "PM2 is " + IntToString(iP2));
                SetGlobalNumber("K_PARTY_STORE2", iP2);
                RemovePartyMember(iP2);
//SendMessageToPC(GetFirstPC(), "PM2 has left the party.");
                DestroyObject(oPM2);
//SendMessageToPC(GetFirstPC(), "PM2 has been destroyed");

                SetGlobalBoolean("K_PARTY_STORED", TRUE);
            }

//            Populate(5, -46, -28, 20, 38, "k1r_paz_guard");

            AssignCommand(GetObjectByTag("paz_holo_base"), ActionStartConversation(GetObjectByTag("k1r_paz_org"), "k1r_pazintro"));
            AddJournalQuestEntry("k1r_paztourney", 1, 1);
        }
    }
}

void Rotate_NPCS(string sComm)
{
    location lLoc;
    vector vec1 = Vector(-43.39, 13.3, 0.0);
    vector vec2 = Vector(-47.85, 5.17, 0.0);
    vector vec3 = Vector(-44.19, -2.88, 0.0);
    vector vec4 = Vector(-37.44, -5.27, 0.0);
    vector vec5 = Vector(-31.11, -2.21, 0.0);
    vector vec6 = Vector(-27.89, 7.49, 0.0);

    int inum = 0;
    while(GetIsObjectValid(GetObjectByTag(sComm, inum)))
    {
        int iRan = Random(6) + 1;
        //SendMessageToPC(GetFirstPC(), "Random was " + IntToString(iRan));
        switch(iRan)
        {
        case 1:
              {
                  lLoc = Location(vec1, 0.0); break;
              }
        case 2:
              {
                  lLoc = Location(vec2, 0.0); break;
              }
        case 3:
              {
                  lLoc = Location(vec3, 0.0); break;
              }
        case 4:
              {
                  lLoc = Location(vec4, 0.0); break;
              }
        case 5:
              {
                  lLoc = Location(vec5, 0.0); break;
              }
        case 6:
              {
                  lLoc = Location(vec6, 0.0); break;
              }
        default:
               { lLoc = Location(vec1, 0.0); }
        }
        SetCommandable(1, GetObjectByTag(sComm, inum));
        AssignCommand(GetObjectByTag(sComm, inum), JumpToLocation(lLoc));
        DelayCommand(2.5, AssignCommand(GetObjectByTag(sComm, inum), SetFacingPoint(Vector(-37.88, 4.9, 59.0))));
        inum++;
    }
}