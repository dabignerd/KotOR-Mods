void main()
{
    object object1 = GetObjectByTag("plc_hotelscomp", 0);
    DisableVideoEffect();
    AssignCommand(object1, ClearAllActions());

    sTag = "";
    if(GetGlobalBoolean("MAN_ECHANIR_DONE") == 1) { sTag = "man26_gonto"; }
    else { sTag = "man26_echmerc2"; }

    SetCommandable(1, GetObjectByTag(sTag));
    AssignCommand(GetObjectByTag(sTag), JumpToLocation(GetGlobalLocation("K1R_SMRE_LOC")));
    AssignCommand(object1, ActionStartConversation(GetFirstPC(), "smre_sun_fin"));
}
