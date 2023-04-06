void main()
{
    int iRange = 100;
    float fRange;
    int iCon;

    if(GetGlobalBoolean("MAN_SWOOPR_DONE") == 1)
    { iRange + 25; } else { iRange - 15; }

//   75, 35

    if(GetGlobalBoolean("kas_HelpedFreyyr") == 1)
    { iRange + 10; } else { iRange - 20; }
//   85, 45 or 55, 15

    if(GetGlobalBoolean("kas_FreyyrDead") == 1)
    { iRange + 5; } else { iRange + 15; }
//   90, 50 or 70, 30
 
    if(GetGlobalBoolean("Lev_Rescue") == 1)
    { iRange + 45; } else { iRange - 15; }
//   135, 95 or 55, 15

    if(GetGlobalBoolean("tat_TuskenDead") == 1)
    { iRange - 30; } else { iRange + 15; }
//   105, 85 or 70, 30

    if(GetGlobalBoolean("TAT_CALO_TRIGGER_SET") == 1)
    { iRange + 15; } else { iRange - 5; }
//   120, 100 or 65, 25

    if(GetGlobalBoolean("TAT_BANDON_TRIG_SET") == 1)
    { iRange + 15; } else { iRange - 10; }
//   135, 115 or 55, 15

    if( iRange > 100) { fRange = IntToFloat(iRange); fRange / 2; iRange = FloatToInt(fRange);}

    string sGender;
    string sGender2;
    string sGender3;
    if(GetGender(GetFirstPC()) == GENDER_MALE) { sGender = "He"; sGender2 = "he"; sGender3 = "his";}
    if(GetGender(GetFirstPC()) == GENDER_FEMALE) { sGender = "She"; sGender2 = "she"; sGender3 = "her";}

    iCon = Random(iRange) + 41;

    SetGlobalNumber("k1r_paz_totconts", iCon);
    SetGlobalNumber("k1r_paz_conts", iCon);
    SetGlobalNumber("k1r_paz_prelim", 0);
    SetGlobalNumber("k1r_paztourney", 1);

    SetCustomToken(2014, IntToString(iCon));
    SetCustomToken(2013, sGender);
    SetCustomToken(2009, sGender2);
    SetCustomToken(2008, sGender3);
    SetLocalNumber(GetObjectByTag("k1r_paz_org"), 31, 0);
    AddJournalQuestEntry("k1r_paztourney", 1, 1);
}