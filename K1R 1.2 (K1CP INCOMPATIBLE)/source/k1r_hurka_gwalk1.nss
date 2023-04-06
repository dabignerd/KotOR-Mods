void main()
{
    object oGuard1 = GetObjectByTag("k1r_guard01");
    object oGuard2 = GetObjectByTag("k1r_guard02");

    ActionPauseConversation();
    SetGlobalFadeIn(3.0, 1.0);
    SetCommandable(1, oGuard1);
    SetCommandable(1, oGuard2);

//    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectMovementSpeedDecrease(15), oGuard1, 30.0);

    DelayCommand(2.25, AssignCommand(oGuard1, ActionMoveToLocation(Location(Vector(64.29, 80.69, 9.00), 180.0))));
    AssignCommand(oGuard2, ActionMoveToLocation(Location(Vector(66.29, 78.69, 9.00), 180.0)));

    ActionResumeConversation();

    DelayCommand(12.25, ExecuteScript("k1r_hurka_gwalk2", OBJECT_SELF));
}