void main()
{
    location lPC = GetLocation(GetFirstPC());
    object oWay = CreateObject(OBJECT_TYPE_WAYPOINT, "paztourney", lPC);

    StartNewModule("k1r_paztourney");
}