void move(string sTag, int iCurrent);

void main()
{
    SetGlobalFadeOut(0.0, 0.5);

    int iCurrent = 0;
    move("k1r_paz_comment", iCurrent); iCurrent = iCurrent + 2;
    move("k1r_paz_comment0", iCurrent); iCurrent = iCurrent + 2;
    move("k1r_paz_comment1", iCurrent); iCurrent = iCurrent + 2;
    move("k1r_paz_comment2", iCurrent); iCurrent = iCurrent + 2;
    move("k1r_paz_comment3", iCurrent); iCurrent = iCurrent + 2;
    move("k1r_paz_comment4", iCurrent); iCurrent = iCurrent + 2;
    move("k1r_paz_comment5", iCurrent); iCurrent = iCurrent + 2;
    move("k1r_paz_comment6", iCurrent); iCurrent = iCurrent + 2;
    move("k1r_paz_comment9", iCurrent); iCurrent = iCurrent + 2;

    object oPC = GetFirstPC();
    object oCeeiia   = GetObjectByTag("k1r_ceeiia");
    object oSykallin = GetObjectByTag("k1r_sykallin");
    object oIrog     = GetObjectByTag("k1r_irog");
    object oCS32     = GetObjectByTag("k1r_cs-32");
    object oSkirata  = GetObjectByTag("k1r_paz_champ");

    location lCeeiia   = Location(Vector(-44.98, 14.25, 57.50), 0.0);
    location lSykallin = Location(Vector(-44.05, 11.88, 57.50), 0.0);
    location lSkirata  = Location(Vector(-42.80, 9.77,  57.50), 0.0);
    location lCS32     = Location(Vector(-32.11, 12.02, 57.50), 0.0);
    location lIrog     = Location(Vector(-31.76, 14.21, 57.50), 0.0);

    vector vLookat = Vector(-37.82, 11.04, 57.50);

    AssignCommand(oPC, ActionJumpToLocation(Location(vLookat, DIRECTION_NORTH)));

    AssignCommand(oCeeiia, ActionJumpToLocation(lCeeiia));
    DelayCommand(0.75, AssignCommand(oCeeiia, SetFacingPoint(Vector(-37.82, 11.04, 57.50))));

    AssignCommand(oSykallin, ActionJumpToLocation(lSykallin));
    DelayCommand(0.75, AssignCommand(oSykallin, SetFacingPoint(Vector(-37.82, 11.04, 57.50))));

    AssignCommand(oIrog, ActionJumpToLocation(lIrog));
    DelayCommand(0.75, AssignCommand(oIrog, SetFacingPoint(Vector(-37.82, 11.04, 57.50))));

    AssignCommand(oCS32, ActionJumpToLocation(lCS32));
    DelayCommand(0.75, AssignCommand(oCS32, SetFacingPoint(Vector(-37.82, 11.04, 57.50))));

    AssignCommand(oSkirata, ActionJumpToLocation(lSkirata));
    DelayCommand(0.75, AssignCommand(oSkirata, SetFacingPoint(Vector(-37.82, 11.04, 57.50))));

    DelayCommand(2.0, SetGlobalFadeIn(0.0, 1.0));
    SetCommandable(1, GetObjectByTag("paz_holo_5bad"));
    DelayCommand(2.5, AssignCommand(GetObjectByTag("paz_holo_base"), ActionStartConversation(GetObjectByTag("k1r_paz_org"), "k1r_paz_endcut")));
}

void move(string sTag, int iCurrent)
{
    object oFound;
    object oArea;
    int iC = 0;
    int iC1 = iCurrent;
    string sNew;

   if(sTag == "k1r_paz_comment") { sNew = "k1r_paz_com";}
   if(sTag == "k1r_paz_comment0") { sNew = "k1r_paz_com0";}
   if(sTag == "k1r_paz_comment1") { sNew = "k1r_paz_com1";}
   if(sTag == "k1r_paz_comment2") { sNew = "k1r_paz_com2";}
   if(sTag == "k1r_paz_comment3") { sNew = "k1r_paz_com3";}
   if(sTag == "k1r_paz_comment4") { sNew = "k1r_paz_com4";}
   if(sTag == "k1r_paz_comment5") { sNew = "k1r_paz_com5";}
   if(sTag == "k1r_paz_comment6") { sNew = "k1r_paz_com6";}
   if(sTag == "k1r_paz_comment9") { sNew = "k1r_paz_com9";}

    while(iC < 2)
    {
        oArea = GetArea(GetFirstPC());
        oFound = GetObjectByTag(sTag, iC);

        location lMove;
        switch(iC1)
        {
           case 0:{lMove = Location(Vector(-32.12, 28.39, 57.50), 0.0); break;}
           case 1:{lMove = Location(Vector(-44.10, 32.39, 57.50), 0.0); break;}
           case 2:{lMove = Location(Vector(-44.10, 23.39, 57.50), 0.0); break;}
           case 3:{lMove = Location(Vector(-32.12, 30.39, 57.50), 0.0); break;}
           case 4:{lMove = Location(Vector(-32.12, 32.39, 57.50), 0.0); break;}
           case 5:{lMove = Location(Vector(-32.12, 24.39, 57.50), 0.0); break;}
           case 6:{lMove = Location(Vector(-32.12, 22.39, 57.50), 0.0); break;}
           case 7:{lMove = Location(Vector(-44.10, 27.39, 57.50), 0.0); break;}
           case 8:{lMove = Location(Vector(-32.12, 32.39, 57.50), 0.0); break;}
           case 9:{lMove = Location(Vector(-32.12, 26.39, 57.50), 0.0); break;}
           case 10:{lMove = Location(Vector(-42.94, 35.46, 57.50), 0.0); break;}
           case 11:{lMove = Location(Vector(-32.12, 34.33, 57.50), 0.0); break;}
           case 12:{lMove = Location(Vector(-44.10, 33.92, 57.50), 0.0); break;}
           case 13:{lMove = Location(Vector(-32.88, 35.49, 57.50), 0.0); break;}
           case 14:{lMove = Location(Vector(-44.10, 31.92, 57.50), 0.0); break;}
           case 15:{lMove = Location(Vector(-44.10, 29.39, 57.50), 0.0); break;}
           case 16:{lMove = Location(Vector(-44.10, 25.39, 57.50), 0.0); break;}
           case 17:{lMove = Location(Vector(-32.12, 20.39, 57.50), 0.0); break;}
           case 18:{lMove = Location(Vector(-44.10, 21.39, 57.50), 0.0); break;}
           case 19:{lMove = Location(Vector(-44.10, 19.39, 57.50), 0.0); break;}
           case 20:{lMove = Location(Vector(-32.12, 28.39, 57.50), 0.0); break;}
       }

       DestroyObject(oFound, 0.0, 1);
       oFound = CreateObject(OBJECT_TYPE_CREATURE, sNew, lMove);

       SetCommandable(1, oFound);
//       AssignCommand(oFound, JumpToLocation(lMove));
       DelayCommand(0.5, AssignCommand(oFound, SetFacingPoint(Vector(-37.82, 11.04, 57.50))));

//       SendMessageToPC(GetFirstPC(), "Int: " + IntToString(iC1));

       iC1++;
       iC++;

//       SendMessageToPC(GetFirstPC(), "Int1: " + IntToString(iC1));
    }
}