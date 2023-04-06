void main()
{
    if(GetGlobalNumber("K1R_SUNRY_REC") == 1)
    {
//        SendMessageToPC(GetFirstPC(), "Sunry not here...");
        SetGlobalNumber("K1R_SUNRY_REC", 2);

        sTag = "";
        if(GetGlobalBoolean("MAN_ECHANIR_DONE") == 1) { sTag = "man26_gonto"; }
        else { sTag = "man26_echmerc2"; }

        SetGlobalLocation("K1R_SMRE_LOC", GetLocation(GetObjectByTag(sTag)));
        SetCommandable(1, GetObjectByTag(sTag));
        AssignCommand(GetObjectByTag(sTag), JumpToLocation(Location(Vector(15.07,34.73,57.5), 0.0)));
        ExecuteScript("smre_sun_rec", OBJECT_SELF);
    }
}