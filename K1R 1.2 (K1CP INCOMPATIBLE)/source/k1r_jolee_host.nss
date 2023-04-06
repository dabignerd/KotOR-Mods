void main()
{
    ActionPauseConversation();
    NoClicksFor(3.0);
    DelayCommand(2.0, ActionResumeConversation());

    ChangeToStandardFaction(GetObjectByTag("kas24_kinrath01"), 1);
    ChangeToStandardFaction(GetObjectByTag("kas24_kinrath02"), 1);
    ChangeToStandardFaction(GetObjectByTag("kas24_kinrath03"), 1);
    ChangeToStandardFaction(GetObjectByTag("kas24_kinrath04"), 1);
    ChangeToStandardFaction(GetObjectByTag("kas24_kinrath05"), 1);
    ChangeToStandardFaction(GetObjectByTag("Jolee"), 2);

    SetGlobalNumber("K1R_JOLEE_KINRATH", 5);
}