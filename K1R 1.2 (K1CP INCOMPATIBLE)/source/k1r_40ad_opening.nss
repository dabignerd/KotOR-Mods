void main()
{ 
    object oNPC = GetObjectByTag("k1r_hurka");

    object oPC  = GetFirstPC();
    object oPM1 = GetObjectByTag("LevCarth");
    object oPM2 = GetObjectByTag("LevBastila");

    object oDoor1 = GetObjectByTag("lev40_cmddoor");
    object oDoor2 = GetObjectByTag("k1r_levad_dor");
//    ApplyEffectToObject(1, EffectMovementSpeedDecrease(45), oPM1, 100.0);

    SetLocked(oDoor1, FALSE);

    ActionPauseConversation();
    DelayCommand(10.0, ActionResumeConversation());

    AssignCommand(oNPC,                   ActionForceMoveToLocation(Location(Vector(170.29, 56.29, 3.00), 342.37)));
    DelayCommand(0.5, AssignCommand(oPC,  ActionForceMoveToLocation(Location(Vector(172.17, 51.78, 3.00), 057.17))));
    DelayCommand(1.0, AssignCommand(oPM1, ActionForceMoveToLocation(Location(Vector(170.73, 53.47, 3.00), 022.83))));
    DelayCommand(1.5, AssignCommand(oPM2, ActionForceMoveToLocation(Location(Vector(169.61, 54.37, 3.00), 007.09))));

    DelayCommand(0.01, AssignCommand(oDoor1, ActionOpenDoor(oDoor1)));
    DelayCommand(9.0, AssignCommand(oDoor1, ActionCloseDoor(oDoor1)));

    DelayCommand(9.5, AssignCommand(oDoor2, ActionOpenDoor(oDoor2)));
    DelayCommand(18.0, AssignCommand(oDoor2, ActionCloseDoor(oDoor2)));

    DelayCommand(16.0, AssignCommand(oNPC, SetFacing(342.37)));
    DelayCommand(16.5, AssignCommand(oPC,  SetFacing(57.17)));
    DelayCommand(17.0, AssignCommand(oPM1, SetFacing(22.83)));
    DelayCommand(17.5, AssignCommand(oPM2, SetFacing(7.09)));
}