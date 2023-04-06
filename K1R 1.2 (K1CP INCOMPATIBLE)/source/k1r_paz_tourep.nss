void Pazaak();

void main()
{
    Pazaak();
}

void Pazaak()
{
    int iRank = GetGlobalNumber("k1r_paztourney");
//    SendMessageToPC(GetFirstPC(), "Rank won: " + IntToString(iRank));

    object oOrg = GetObjectByTag("k1r_paz_org");

//    SendMessageToPC(GetFirstPC(), "Boolean: " + IntToString(GetLocalBoolean(oOrg, 40)));
    if(iRank == 3)
    {
    // Preliminaries
        if(GetGlobalBoolean("k1r_paz_matchwon") != 0)
        {
            int iMatch = GetGlobalNumber("k1r_pazprelimwon");
            int im = iMatch + 1;
            SetGlobalNumber("k1r_pazprelimwon", im);
            if(im >= 5)
            {
                SetGlobalNumber("k1r_paztourney", 4);
                AddJournalQuestEntry("k1r_paztourney",2, 1);
                SetCustomToken(2015, "Ceeiia");
                SetCustomToken(2010, "Ceeiia");
            }
        }
        else
        {
            SetGlobalNumber("k1r_pazprelimwon", -1); AddJournalQuestEntry("k1r_paztourney", 8, 1);
        }
    SetGlobalNumber("k1r_inprelim", 0);
    }
    if(iRank == 5)
    {
    // Finals
        SetGlobalBoolean("k1r_paz_orgrep", 1);
        int iCon = GetGlobalNumber("k1r_paz_conts");
        if(iCon < 0) { iCon += 256; }

//        SendMessageToPC(GetFirstPC(), "Conts: " + IntToString(iCon));

        int idefCon = GetGlobalNumber("k1r_paz_defconts");
        if(idefCon < 0) { idefCon += 256; }

        // Take a measure of contestants eliminated.
        // 50% of what was there,
        // times 30%  (So 15% of original),
        // Randomized and then adding 20% of original.

        /* 100(0.5) = 50(0.3) = 15 /||\ (0 through 15)+100(0.2) = anywhere from 20 to 35 eliminated. */

        idefCon = FloatToInt(idefCon + (0.5 * iCon));
        idefCon = FloatToInt(idefCon * 0.3);
        idefCon = Random(idefCon) + FloatToInt(0.2 * iCon);

        if(idefCon < 0) { idefCon = 0; }
        else if(idefCon < 10) { idefCon += 5; }

        SetGlobalNumber("k1r_paz_defconts", idefCon);

        // Subtract the number eliminated
        // from the original amount, so
        // that we don't have more taken
        // out in the end than what we
        // started with...
        int i = iCon - idefCon;
        SetGlobalNumber("k1r_paz_conts", i);

//        SendMessageToPC(GetFirstPC(), "Number eliminated: " + IntToString(i));

        string sName = GetGlobalString("k1r_paz_winner");
        string sNext;
        int sNum;
        if(sName == "Ceeiia")   { sNext = "Sykallin"; sNum = 4; AddJournalQuestEntry("k1r_paztourney",3,1); }
        if(sName == "Sykallin") { sNext = "Irog";     sNum = 3; AddJournalQuestEntry("k1r_paztourney",4,1); }
        if(sName == "Irog")     { sNext = "CS-32";    sNum = 2; AddJournalQuestEntry("k1r_paztourney",5,1); }
        if(sName == "CS-32")    { sNext = "Skirata";  sNum = 1; AddJournalQuestEntry("k1r_paztourney",6,1); }
        if(sName == "Skirata")  { sNext = "none";     sNum = 0; AddJournalQuestEntry("k1r_paztourney",7,1); }

        if(GetGlobalBoolean("k1r_paz_matchwon") == 1)
        {//SendMessageToPC(GetFirstPC(), "Made it to 1");
            int iDefspec = GetGlobalNumber("k1r_paz_speconts");
            int iM = iDefspec - 1;

//            SendMessageToPC(GetFirstPC(), "specials: " + IntToString(iM));

            if(sName == "Skirata") { sNum += 1; }
            SetGlobalNumber("k1r_paz_speconts", sNum);
            if(sName == "Skirata") { sNum -= 1; }

//            if(iM >= 5) { SetGlobalNumber("k1r_paztourney", 7); AddJournalQuestEntry("k1r_paztourney", 7, 1);}

            SetGlobalString("k1r_paz_winner", sName);
        }
        else
        {
            int iDefspec = GetGlobalNumber("k1r_paz_speconts");
            int iM = iDefspec - 1;
//            SendMessageToPC(GetFirstPC(), "specials: " + IntToString(iM));
            SetGlobalNumber("k1r_paz_speconts", sNum+2);
        }

        int itefCon = GetGlobalNumber("k1r_paz_totconts");
        if(itefCon < 0) { itefCon += 256; }

        int idefCon_spec = GetGlobalNumber("k1r_paz_speconts");

        int iPercent;
        int iAmount;
        string sRank;
        SetPartyLeader(-1);
        string sN = GetName(GetFirstPC());

        switch(idefCon_spec)
        {
        case 0: { sRank = "no placement, but for reaching this point, " + sN + " gets a " + IntToString(1); iPercent = 1; break; }
        case 5: { sRank = "5th place, and a " + IntToString(10); iPercent = 10; break; }
        case 4: { sRank = "4th place, and a " + IntToString(35); iPercent = 35; break; }
        case 3: { sRank = "3rd place, and a " + IntToString(55); iPercent = 55; break; }
        case 2: { sRank = "2nd place, and a " + IntToString(70); iPercent = 70; break; }
        case 1: { sRank = "1st place, and a " + IntToString(100); iPercent = 100; break; }
//    default: { sRank = "0th"; iPercent = 0; }
        }
//        SendMessageToPC(GetFirstPC(), "Contestants: " + IntToString(itefCon) + " Specials: " + IntToString(idefCon_spec) + " Place: " + sRank + "; Share: " + IntToString(iPercent));
        iAmount = itefCon + idefCon_spec;     // SendMessageToPC(GetFirstPC(), "Amount: " + IntToString(iAmount));
        iAmount *= 500;                       // SendMessageToPC(GetFirstPC(), "Amount: " + IntToString(iAmount));
        float fM = IntToFloat(iAmount);       // SendMessageToPC(GetFirstPC(), "Amount: " + FloatToString(fM));
        float fAmoun = IntToFloat(iPercent) / 100;
        fAmoun = fAmoun * fM;                 // SendMessageToPC(GetFirstPC(), "Amount: " + FloatToString(fAmoun));
        int iAm = FloatToInt(fAmoun);         // SendMessageToPC(GetFirstPC(), "Amount: " + IntToString(iAm));
        SetGlobalString("k1r_paz_pot", IntToString(iAm));

        SetCustomToken(2021, sRank);
        SetCustomToken(2022, IntToString(iPercent));
        SetCustomToken(2023, IntToString(iAm));

        SetCustomToken(2015, sName);
        SetCustomToken(2010, sNext);
        SetCustomToken(2016, IntToString(sNum));
        SetGlobalNumber("k1r_inprelim", 0);
        if(GetGlobalBoolean("k1r_paz_matchwon") == 0) { if(sName == "Ceeiia") { AddJournalQuestEntry("k1r_paztourney", 8, 1); } else { AddJournalQuestEntry("k1r_paztourney", 9, 1); } }
    }
}