void main()
{
    int iResult = 1;
    string sName = "Sykallin";

    object oOrg = GetObjectByTag("k1r_paz_org");

    SetGlobalBoolean("k1r_paz_matchwon", 1);
    SetLocalBoolean(GetObjectByTag("k1r_sykallin"), 40, iResult);
    SetLocalBoolean(GetObjectByTag("k1r_sykallin"), 39, 1);

    SetGlobalNumber("k1r_paz_speconts", 4);
    SetGlobalString("k1r_paz_winner", sName);
    SetGlobalNumber("k1r_paztourney", 5);

    ExecuteScript("k1r_paz_tourep", OBJECT_SELF);
}