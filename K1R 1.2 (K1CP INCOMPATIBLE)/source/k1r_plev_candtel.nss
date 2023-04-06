void main()
{
    ExecuteScript("k1r_plev_candloc", GetObjectByTag("lev40_candship"));
    location lLocal = Location(Vector(175.31, 78.99, 8.99), 0.0);

//    SendMessageToPC(GetFirstPC(), "Here");

    AssignCommand(GetObjectByTag("Carth"),     ClearAllActions());
    AssignCommand(GetObjectByTag("Bastila"),   ClearAllActions());
    AssignCommand(GetObjectByTag("k1r_hurka"), ClearAllActions());
    AssignCommand(GetFirstPC(),                ClearAllActions());

    DelayCommand(0.05, AssignCommand(GetObjectByTag("Carth"),     ActionJumpToLocation(lLocal)));
    DelayCommand(0.1, AssignCommand(GetObjectByTag("Bastila"),    ActionJumpToLocation(lLocal)));
    DelayCommand(0.15, AssignCommand(GetObjectByTag("k1r_hurka"), ActionJumpToLocation(lLocal)));
    DelayCommand(0.2, AssignCommand(GetFirstPC(),                 ActionJumpToLocation(lLocal)));

    SetGlobalFadeIn(0.0, 0.5);
//    SendMessageToPC(GetFirstPC(), "Here1");
}