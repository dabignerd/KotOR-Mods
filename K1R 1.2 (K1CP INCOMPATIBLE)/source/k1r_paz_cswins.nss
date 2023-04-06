void main()
{
    int iResult = 1;
    string sName = "CS-32";

    object oOrg = GetObjectByTag("k1r_paz_org");

    SetGlobalBoolean("k1r_paz_matchwon", 1);
    SetLocalBoolean(GetObjectByTag("k1r_cs-32"), 40, iResult);
    SetLocalBoolean(GetObjectByTag("k1r_cs-32"), 39, iResult);

    SetGlobalNumber("k1r_paz_speconts", 2);
    SetGlobalString("k1r_paz_winner", sName);
    SetGlobalNumber("k1r_paztourney", 5);

    ExecuteScript("k1r_paz_tourep", OBJECT_SELF);
}