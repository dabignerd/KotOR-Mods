void main()
{
    int iResult = 1;
    string sName = "Irog";

    object oOrg = GetObjectByTag("k1r_paz_org");

    SetLocalBoolean(GetObjectByTag("k1r_paz_org"), 40, iResult);
    SetLocalBoolean(GetObjectByTag("k1r_irog"), 40, iResult);
    SetLocalBoolean(GetObjectByTag("k1r_irog"), 39, iResult);

    SetGlobalNumber("k1r_paz_speconts", 3);
    SetGlobalString("k1r_paz_winner", sName);
    SetGlobalNumber("k1r_paztourney", 5);

    ExecuteScript("k1r_paz_tourep", OBJECT_SELF);
}