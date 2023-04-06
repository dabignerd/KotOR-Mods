void main()
{
    int iResult = 1;
    string sName = "Ceeiia";

    object oOrg = GetObjectByTag("k1r_paz_org");

    SetGlobalBoolean("k1r_paz_matchwon", 1);
    SetLocalBoolean(GetObjectByTag("k1r_ceeiia"), 40, iResult);
    SetLocalBoolean(GetObjectByTag("k1r_ceeiia"), 39, iResult);

    SetGlobalNumber("k1r_paz_speconts", 5);
    SetGlobalString("k1r_paz_winner", sName);
    SetGlobalNumber("k1r_paztourney", 5);

    ExecuteScript("k1r_paz_tourep", OBJECT_SELF);
}