void main()
{
    ActionPauseConversation();
    SetGlobalFadeOut(0.0, 0.5);

    object oKinrath1 = GetObjectByTag("kas24_kinrath01"); // , Location(Vector(99.35, 224.79, 7.04), 275.0));
    object oKinrath2 = GetObjectByTag("kas24_kinrath02"); // , Location(Vector(102.72, 230.17, 7.52), 275.0));
    object oKinrath3 = GetObjectByTag("kas24_kinrath03"); // , Location(Vector(104.17, 230.19, 7.52), 275.0));
    object oKinrath4 = GetObjectByTag("kas24_kinrath04"); // , Location(Vector(102.72, 227.54, 7.52), 275.0));
    object oKinrath5 = GetObjectByTag("kas24_kinrath05"); // , Location(Vector(101.60, 225.56, 7.52), 275.0));

    DelayCommand(0.5, SetCommandable(1, oKinrath1));
    DelayCommand(0.5, SetCommandable(1, oKinrath2));
    DelayCommand(0.5, SetCommandable(1, oKinrath3));
    DelayCommand(0.5, SetCommandable(1, oKinrath4));
    DelayCommand(0.5, SetCommandable(1, oKinrath5));

    DelayCommand(1.0, AssignCommand(oKinrath1, ActionMoveToLocation(Location(Vector(72.74, 228.49, 6.0),  275.0))));
    DelayCommand(1.0, AssignCommand(oKinrath2, ActionMoveToLocation(Location(Vector(72.65, 232.88, 5.98), 275.0))));
    DelayCommand(1.0, AssignCommand(oKinrath3, ActionMoveToLocation(Location(Vector(78.51, 229.92, 6.53), 275.0))));
    DelayCommand(1.0, AssignCommand(oKinrath4, ActionMoveToLocation(Location(Vector(76.63, 227.45, 6.56), 275.0))));
    DelayCommand(1.0, AssignCommand(oKinrath5, ActionMoveToLocation(Location(Vector(76.83, 235.69, 6.10), 275.0))));

    DelayCommand(1.25, SetGlobalFadeIn(0.0, 0.5));

    DelayCommand(5.0, ActionResumeConversation());
//    SetGlobalBoolean("K1R_JOLEE_FIGHT", 1);
}