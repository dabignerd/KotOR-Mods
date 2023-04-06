void main()
{
    object oPC        = GetFirstPC();
    object oK1r_hurka = GetObjectByTag("k1r_hurka", 0);
    object oCarth     = GetObjectByTag("Carth",     0);
    object oBastila   = GetObjectByTag("Bastila",   0);

//    object oK1r_lev40_pm1 = GetObjectByTag("k1r_lev40_pm1", 0);
//    object oK1r_lev40_pm2 = GetObjectByTag("k1r_lev40_pm2", 0);
//    object oK1r_lev40_pc  = GetObjectByTag("k1r_lev40_pc",  0);
    object oK1r_stddoor   = GetObjectByTag("k1r_stddoor",   0);

    ActionPauseConversation();

    ApplyEffectToObject(1, EffectMovementSpeedDecrease(40), oCarth, 30.0);
//    ApplyEffectToObject(1, EffectMovementSpeedDecrease(40), oBastila, 30.0);

    DelayCommand(8.0,   AssignCommand(oK1r_stddoor, ActionOpenDoor(oK1r_stddoor)));
    DelayCommand(20.75, AssignCommand(oK1r_stddoor, ActionCloseDoor(oK1r_stddoor)));

//    DelayCommand(22.0, SetGlobalFadeOut(0.0, 0.5));
//    DelayCommand(0.5, ExecuteScript("k1r_plev_solofix", OBJECT_SELF));
//    DelayCommand(25.0, SetGlobalFadeIn(0.0,  0.0));

    DelayCommand(1.0, AssignCommand(oPC, ActionForceMoveToLocation(Location(Vector(176.99, 52.0, 3.0), 0.0), 0, 30.0)));
    DelayCommand(3.0, AssignCommand(oPC, ActionForceMoveToLocation(Location(Vector(194.2, 53.65, 3.0), 0.0), 0, 30.0)));

    DelayCommand(3.0, AssignCommand(oCarth, ActionForceMoveToLocation(Location(Vector(176.99, 52.0, 3.0), 0.0), 0, 30.0)));
    DelayCommand(5.0, AssignCommand(oCarth, ActionForceMoveToLocation(Location(Vector(192.41, 53.65, 3.0), 0.0), 0, 30.0)));

    if ((GetGlobalNumber("K1R_HURKA_STATE") == 3))
    {
        AssignCommand(oK1r_hurka, ActionForceMoveToLocation(Location(Vector(176.99, 59.0, 3.0), 0.0), 0, 30.0));
        DelayCommand(2.0, AssignCommand(oK1r_hurka, ActionForceMoveToLocation(Location(Vector(194.2, 56.91, 3.0), 0.0), 0, 30.0)));
    }

    SetGlobalNumber("K1R_HURKA_STATE", 4);

    DelayCommand(1.0, AssignCommand(oBastila, ActionForceMoveToLocation(Location(Vector(173.78, 58.91, 3.0), 0.0), 0, 30.0)));
    DelayCommand(3.0, AssignCommand(oBastila, ActionForceMoveToLocation(Location(Vector(176.99, 59.0, 3.0), 0.0), 0, 30.0)));
    DelayCommand(4.0, AssignCommand(oBastila, ActionDoCommand(ActionForceMoveToLocation(Location(Vector(191.94, 56.91, 3.0), 0.0), 0, 30.0))));
    DelayCommand(8.0, AssignCommand(oBastila, ActionDoCommand(ActionForceMoveToLocation(Location(Vector(191.94, 56.91, 3.0), 0.0), 0, 30.0))));
    DelayCommand(12.0, AssignCommand(oBastila, ActionDoCommand(ActionForceMoveToLocation(Location(Vector(191.94, 56.91, 3.0), 0.0), 0, 30.0))));
    DelayCommand(16.0, AssignCommand(oBastila, ActionDoCommand(ActionForceMoveToLocation(Location(Vector(191.94, 56.91, 3.0), 0.0), 0, 30.0))));

    DelayCommand(21.5, AssignCommand(oBastila, ActionJumpToLocation(Location(Vector(191.94, 56.91, 3.0), 0.0))));

    DelayCommand(26.0, ActionResumeConversation());
}
