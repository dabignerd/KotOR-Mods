void main()
{
    ActionPauseConversation();

    object oPC = GetFirstPC();
    object oCarth = GetObjectByTag("Carth", 0);
    object oBastila = GetObjectByTag("Bastila", 0);

    object oK1r_hurka = GetObjectByTag("k1r_hurka", 0);
    object oLev40_bridgedoor = GetObjectByTag("lev40_bridgedoor", 0);

    AssignCommand(oLev40_bridgedoor, ActionOpenDoor(oLev40_bridgedoor));

    int int1 = 0;

    AssignCommand(oCarth, ClearAllActions());
    ApplyEffectToObject(1, EffectMovementSpeedDecrease(45), oCarth, 12.5);
    DelayCommand(3.0, AssignCommand(oCarth, ClearAllEffects()));

    AssignCommand(oPC, ActionForceMoveToLocation(Location(Vector(150.02, 53.81, 3.0), 0.0), 0, 30.0));

    AssignCommand(oCarth, ActionForceMoveToLocation(Location(Vector(146.91, 56.24, 3.0), 0.0), 0, 30.0));

    DelayCommand(1.5, AssignCommand(oBastila, ActionForceMoveToLocation(Location(Vector(146.9, 54.07, 3.0), 0.0), 0, 30.0)));

    AssignCommand(oK1r_hurka, ActionForceMoveToLocation(Location(Vector(149.9, 56.31, 3.0), 0.0), 0, 30.0));

    DelayCommand(3.1, AssignCommand(oLev40_bridgedoor, ActionCloseDoor(oLev40_bridgedoor)));

    SetGlobalFadeOut(1.0, 2.0, 0.0, 0.0, 0.0);
    SetGlobalNumber("K1R_HURKA_STATE", 3);
    DelayCommand(3.2, StartNewModule("lev_m40ad", "", "", "", "", "", "", ""));
    DelayCommand(3.0, ActionResumeConversation());
}