/////////////////////////////////////////////
//  k1r_jolee_trig1.nss
//  ===================
//  Launches Jolee's Kinrath Encounter.
//
/////////////////////////////////////////////

void main()
{
    SetEncounterActive(TRUE, GetObjectByTag("k1r_pkas_jolkin"));
    ChangeToStandardFaction(GetObjectByTag("k1r_pkas_jolkin"), 1);

//    SendMessageToPC(GetFirstPC(), "Encounter twitched!");

    DelayCommand(0.5, ExecuteScript("k1r_kinrspwn", OBJECT_SELF));
}