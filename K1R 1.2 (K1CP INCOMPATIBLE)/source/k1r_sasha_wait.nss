////////////////////////////////
//  k1r_sasha_wait.nss
//  ==================
//  Added in on a new line after
//  Sasha runs away. Should make
//  the PC stay in the dialog...
////////////////////////////////

void main()
{
    DelayCommand(1.0, AssignCommand(GetFirstPC(), SetFacingPoint(Vector(38.71, 31.58, 1.80))));
    ActionPauseConversation();
    ActionWait(5.0);
    ActionResumeConversation();
    NoClicksFor(5.0);
}