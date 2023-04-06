void main()
{
    object oGuard1 = GetObjectByTag("k1r_guard01");
    object oGuard2 = GetObjectByTag("k1r_guard02");

    DelayCommand(0.5, AssignCommand(oGuard1, ActionMoveToLocation(Location(Vector(61.20, 67.38, 9.00), 273.28998))));
    DelayCommand(1.5, AssignCommand(oGuard1, ActionMoveToLocation(Location(Vector(61.20, 67.38, 9.00), 273.28998))));
    DelayCommand(2.5, AssignCommand(oGuard1, ActionMoveToLocation(Location(Vector(61.20, 67.38, 9.00), 273.28998))));
    DelayCommand(3.5, AssignCommand(oGuard1, ActionMoveToLocation(Location(Vector(61.20, 67.38, 9.00), 273.28998))));
    DelayCommand(0.5, AssignCommand(oGuard2, ActionMoveToLocation(Location(Vector(65.49, 62.05, 9.00), 359.69489))));

    DelayCommand(6.0, AssignCommand(GetObjectByTag("k1r_meddoor"), ActionCloseDoor(GetObjectByTag("k1r_meddoor"))));

//    DelayCommand(5.5, AssignCommand(GetFirstPC(),              ActionJumpToLocation(Location(Vector(55.12, 79.02, 9.00), 273.289))));
//    DelayCommand(5.5, AssignCommand(GetObjectByTag("Carth"),   ActionJumpToLocation(Location(Vector(55.12, 78.02, 9.00), 273.289))));
//    DelayCommand(5.5, AssignCommand(GetObjectByTag("Bastila"), ActionJumpToLocation(Location(Vector(55.12, 80.02, 9.00), 273.289))));

//    DelayCommand(9.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectMovementSpeedDecrease(45), GetObjectByTag("Carth"),   10.0));
//    DelayCommand(9.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectMovementSpeedDecrease(45), GetObjectByTag("Bastila"), 10.0));

//    DelayCommand(9.5, AssignCommand(GetFirstPC(),              ActionMoveToLocation(Location(Vector(63.87, 74.37, 9.00), 0.0))));
//    DelayCommand(9.5, AssignCommand(GetObjectByTag("Carth"),   ActionMoveToLocation(Location(Vector(64.95, 73.96, 9.00), 0.0))));
//    DelayCommand(9.5, AssignCommand(GetObjectByTag("Bastila"), ActionMoveToLocation(Location(Vector(62.87, 73.82, 9.00), 0.0))));

    DelayCommand(20.0, SetCameraFacing(0.0));

//    DelayCommand(18.5, AssignCommand(GetFirstPC(),              SetFacing(270.0)));
//    DelayCommand(18.5, AssignCommand(GetObjectByTag("Carth"),   SetFacing(270.0)));
//    DelayCommand(18.5, AssignCommand(GetObjectByTag("Bastila"), SetFacing(270.0)));
}