void K1AddPartyMember(int iNum, object oNPC)
{
    AddPartyMember(iNum, oNPC);
}

void main()
{
    object oCarth = GetObjectByTag("Carth", 0);
    object oBastila = GetObjectByTag("Bastila");

    location lPM1 = GetLocation(GetObjectByTag("LevCarth"));

    location lPM2;
    if(GetIsObjectValid(GetObjectByTag("LevBastila")))
    {
        lPM2 = GetLocation(GetObjectByTag("LevBastila"));
    }
    else
    {
        lPM2 = GetLocation(oBastila);
    }



    DestroyObject(GetObjectByTag("LevCarth"));

    DestroyObject(GetObjectByTag("LevBastila"));

    DelayCommand(0.5, K1AddPartyMember(0, oBastila));
    DelayCommand(0.5, K1AddPartyMember(2, oCarth));

    DelayCommand(0.6, AssignCommand(oCarth,   ActionJumpToLocation(lPM1)));
    DelayCommand(0.6, AssignCommand(oBastila, ActionJumpToLocation(lPM2)));
}