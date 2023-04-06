void main()
{
    object oPC=GetFirstPC();
    object oPM1 = GetPartyMemberByIndex(1);
    object oPM2 = GetPartyMemberByIndex(2);

    object oNPC=GetObjectByTag("k1r_tar09_sithc");
    object oDoor = GetObjectByTag("k1r_tar09_scdor");

    object oSith = GetObjectByTag("sithpatrol091");
    object oTech = GetObjectByTag("tar09_shieldtech");

   int iResult = GetLocalBoolean(oDoor, 40);

   if ( iResult == FALSE) { return; }

    ChangeFactionByFaction(1, 15);

    AssignCommand(oNPC, ClearAllActions());
    DelayCommand(0.2, AssignCommand(oNPC, ActionStartConversation(oPC)));

//    SetPartyLeader(NPC_PLAYER);
//    SetSoloMode(TRUE);

    vector pPosition=Vector(-7.75373,-10.02374,-0.000002);
    location lPC=Location(pPosition, 178.35609);

    vector xPosition=Vector(-7.07845,-8.41192,0.00);
    location lPM1=Location(pPosition, 178.35609);

    vector yPosition=Vector(-6.73226,-11.54174,-0.000004);
    location lPM2=Location(pPosition, 178.35609);

    CancelCombat(oPC);
    CancelCombat(oPM1);
    CancelCombat(oPM2);

    AssignCommand(oPC, ClearAllActions());
    AssignCommand(oPM1, ClearAllActions());
    AssignCommand(oPM2, ClearAllActions());

    DelayCommand(0.01, AssignCommand(oPC, JumpToLocation(lPC)));
    DelayCommand(0.01, AssignCommand(oPM1, JumpToLocation(lPM1)));
    DelayCommand(0.01, AssignCommand(oPM2, JumpToLocation(lPM2)));

    DelayCommand(1.0, SetLocalBoolean(oDoor, 40, FALSE));
}