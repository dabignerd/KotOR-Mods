/////////////////////////////////////////////
//  k1r_jolee_trig2.nss
//  ===================
//  Triggers after the Kinrath are dead.
//  Launches Jolee's dialog, part 2.
//
//  Ends with Jolee running to his hut.
//
/////////////////////////////////////////////

void main()
{
    SetGlobalNumber("K1R_JOLEE_FIGHT", 1);
    CancelCombat(GetPartyMemberByIndex(0));
    CancelCombat(GetPartyMemberByIndex(1));
    CancelCombat(GetPartyMemberByIndex(2));
    CancelCombat(GetObjectByTag("Jolee"));

    SetCommandable(1, GetFirstPC());
    AssignCommand(GetFirstPC(), ClearAllActions());

    DelayCommand(0.25, AssignCommand(GetFirstPC(), ActionStartConversation(GetObjectByTag("Jolee"), "kas24_jolee_01", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
}