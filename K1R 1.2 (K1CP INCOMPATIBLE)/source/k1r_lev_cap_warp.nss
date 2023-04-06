void main()
{
    object oSith0 = GetObjectByTag("SithCommander");
    object oSith1 = GetObjectByTag("SithTrooper1");
    object oSith2 = GetObjectByTag("SithTrooper2", 0);
    object oSith3 = GetObjectByTag("SithTrooper2", 1);

    SetCommandable(TRUE, oSith0);
    AssignCommand(oSith1, ClearAllActions());
    AssignCommand(oSith2, ClearAllActions());
    AssignCommand(oSith3, ClearAllActions());

    SetGlobalFadeIn(0.25, 0.5);
    AssignCommand(GetFirstPC(),              ActionJumpToLocation(Location(Vector(133.39, 90.81, -10.0), 90.0)));
    AssignCommand(GetObjectByTag("carth"),   ActionJumpToLocation(Location(Vector(131.89, 90.81, -10.0), 90.0)));
    AssignCommand(GetObjectByTag("bastila"), ActionJumpToLocation(Location(Vector(134.89, 90.81, -10.0), 90.0)));

    AssignCommand(oSith0, ActionJumpToLocation(Location(Vector(133.39, 93.81, -10.0), 270.0)));
    AssignCommand(oSith1, ActionJumpToLocation(Location(Vector(133.39, 88.81, -10.0), 90.0)));
    AssignCommand(oSith2, ActionJumpToLocation(Location(Vector(131.89, 88.81, -10.0), 90.0)));
    AssignCommand(oSith3, ActionJumpToLocation(Location(Vector(134.89, 88.81, -10.0), 90.0)));
}