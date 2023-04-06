void main()
{
    ActionPauseConversation();

    object oPC = GetFirstPC();
    object oBastila = GetObjectByTag("Bastila");
    object oCarth = GetObjectByTag("Carth");
    object oHurka = GetObjectByTag("k1r_hurka");

    object oDoor = GetObjectByTag("k1r_meddoor");

    SetGlobalNumber("K1R_HURKA_STATE", 2);

    AssignCommand(oDoor, ActionOpenDoor(oDoor));

    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectMovementSpeedDecrease(45), oCarth,   10.0);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectMovementSpeedDecrease(45), oBastila, 10.0);

    DelayCommand(1.0, AssignCommand(oPC, ActionForceMoveToLocation (Location(Vector(62.13, 77.12, 9.00), 0.0))));

    DelayCommand(0.5, AssignCommand(oCarth, ActionForceMoveToLocation (Location(Vector(80.77, 79.56, 9.00), 0.0))));

    DelayCommand(2.0, AssignCommand(oBastila, ActionForceMoveToLocation (Location(Vector(80.51, 77.85, 9.00), 0.0))));
    AssignCommand(oHurka, ActionForceMoveToLocation (Location(Vector(64.76, 76.89, 9.00), 0.0)));

//    DelayCommand(10.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));

    SetGlobalFadeOut(5.0, 3.0);

    DelayCommand(23.0, ActionResumeConversation());
}