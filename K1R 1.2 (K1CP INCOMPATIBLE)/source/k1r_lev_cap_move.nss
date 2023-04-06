void main()
{
    object oSith0 = GetObjectByTag("SithCommander");
    object oSith1 = GetObjectByTag("SithTrooper1");
    object oSith2 = GetObjectByTag("SithTrooper2", 0);
    object oSith3 = GetObjectByTag("SithTrooper2", 1);
    object oSith4 = GetObjectByTag("SithTrooper2", 2);
    object oSith5 = GetObjectByTag("SithTrooper2", 3);
    object oSith6 = GetObjectByTag("SithTrooper2", 4);
    object oSith7 = GetObjectByTag("SithTrooper2", 5);
    object oSith8 = GetObjectByTag("SithTrooper2", 6);

    SetCommandable(TRUE, oSith0);
    SetCommandable(TRUE, oSith1);
    SetCommandable(TRUE, oSith2);
    SetCommandable(TRUE, oSith3);
    SetCommandable(TRUE, oSith4);
    SetCommandable(TRUE, oSith5);
    SetCommandable(TRUE, oSith6);
    SetCommandable(TRUE, oSith7);
    SetCommandable(TRUE, oSith8);

    AssignCommand(oSith0, SetFacing(280.0));

    AssignCommand(oSith1, ActionMoveToLocation(Location(Vector(132.25, 77.73, -10.0), 270.0)));
    AssignCommand(oSith2, ActionMoveToLocation(Location(Vector(132.25, 77.73, -10.0), 270.0)));
    AssignCommand(oSith3, ActionMoveToLocation(Location(Vector(132.25, 77.73, -10.0), 270.0)));
    AssignCommand(oSith4, ActionMoveToLocation(Location(Vector(132.25, 77.73, -10.0), 270.0)));

    AssignCommand(oSith5, ActionMoveToLocation(Location(Vector(135.25, 77.73, -10.0), 270.0)));
    AssignCommand(oSith6, ActionMoveToLocation(Location(Vector(135.25, 77.73, -10.0), 270.0)));
    AssignCommand(oSith7, ActionMoveToLocation(Location(Vector(135.25, 77.73, -10.0), 270.0)));
    AssignCommand(oSith8, ActionMoveToLocation(Location(Vector(135.25, 77.73, -10.0), 270.0)));

    DelayCommand(6.5, DestroyObject(oSith4));
    DelayCommand(6.5, DestroyObject(oSith5));
    DelayCommand(6.5, DestroyObject(oSith6));
    DelayCommand(6.5, DestroyObject(oSith7));
    DelayCommand(6.5, DestroyObject(oSith8));

    DelayCommand(6.5, SetGlobalFadeOut(0.0, 0.5));
}