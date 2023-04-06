void main()
{ 	


    if (GetEnteringObject() != GetPartyMemberByIndex(0))
        return;
        
    if (!GetGlobalBoolean("K1R_PRIS_ESCAPED") || GetLocalBoolean(OBJECT_SELF, 40))
        return;

   vector pPosition=Vector(64.37,74.37,9.00);
   location lPC=Location(pPosition, 273.20969);
   vector aPosition=Vector(65.45,73.96,9.00);
   location lPM1=Location(aPosition,273.20969);
   vector bPosition=Vector(63.47,73.82,3.00);
   location lPM2=Location(bPosition,273.20969);

   object oPC=GetFirstPC();
   object oPM1 = GetObjectByTag("Carth");
   object oPM2 = GetObjectByTag("Bastila");
   object oDoor = GetObjectByTag("k1r_meddoor");

//      AssignCommand(oDoor, ActionCloseDoor(oDoor));
      SetSoloMode(TRUE);
      NoClicksFor(2.25);

         ExecuteScript("k1r_spwn_hurka", OBJECT_SELF);
         SetGlobalFadeOut(0.0, 0.2);
    SetGlobalBoolean("K1R_Hurka_stand", 1);

//         DelayCommand(2.5, AssignCommand(oPC, JumpToLocation(lPC)));
//         DelayCommand(2.5, AssignCommand(oPM1, JumpToLocation(lPM1)));
//         DelayCommand(2.5, AssignCommand(oPM2, JumpToLocation(lPM2)));

         AssignCommand((GetObjectByTag("k1r_guard01")), ActionDoCommand(ActionStartConversation(oPC)));

      SetLocalBoolean(OBJECT_SELF, 40, TRUE);

}