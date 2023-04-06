void main()
{
    object oGuard1 = GetObjectByTag("k1r_guard01");
    object oGuard2 = GetObjectByTag("k1r_guard02");

//    DelayCommand(2.5, AssignCommand(GetFirstPC(),              ActionMoveToLocation(Location(Vector(64.37, 74.37, 9.00), 273.289))));
//    DelayCommand(2.5, AssignCommand(GetObjectByTag("Carth"),   ActionMoveToLocation(Location(Vector(65.45, 73.96, 9.00), 273.289))));
//    DelayCommand(2.5, AssignCommand(GetObjectByTag("Bastila"), ActionMoveToLocation(Location(Vector(63.37, 73.82, 9.00), 273.289))));

    SetCommandable(1, oGuard1);
    SetCommandable(1, oGuard2);

    AssignCommand(oGuard1, ActionForceMoveToLocation(Location(Vector(63.0, 76.32, 9.00), 270.0), 0));
    DelayCommand(4.3, AssignCommand(oGuard2, ClearAllActions()));
    DelayCommand(3.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectMovementSpeedDecrease(4), oGuard2, 5.0));
    DelayCommand(5.31, AssignCommand(oGuard2, ActionForceMoveToLocation(Location(Vector(65.0, 76.32, 9.00), 270.0), 0)));

    if(GetIsOpen(GetObjectByTag("k1r_meddoor")) == 0)
    {
        SetCommandable(1, GetObjectByTag("k1r_meddoor"));
        DelayCommand(5.5, AssignCommand(GetObjectByTag("k1r_meddoor"), ActionOpenDoor(GetObjectByTag("k1r_meddoor"))));
    }

//    DelayCommand(3.0, AssignCommand(oGuard1, ActionMoveToLocation(Location(Vector(65.0, 71.05, 9.00), 270.0), 0)));
    DelayCommand(5.0, ExecuteScript("k1r_hurka_gwalk3", OBJECT_SELF));
}