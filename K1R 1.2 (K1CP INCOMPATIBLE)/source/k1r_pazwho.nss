/*
   k1r_pazwho - Designed to set all of the necessary Custom tokens needed for the updates of the Pazaak Tournament.

   Uses CUSTOM2015-2023, as follows:
       2015 = Contestant just defeated
       2016 = Top Five left
       2017 = Contestants eliminated
       2018 = Contestants still in
       2019 = Top Five beaten
       2020 = Contestants eliminated
       2021 = Rank
       2022 = percent of the prize
       2023 = amount of the prize
*/

void main()
{
    SetGlobalBoolean("k1r_paz_orgrep", 0);

    object oPC = GetFirstPC();
    string sWin = GetGlobalString("k1r_paz_winner");
    string sRank;

    int iCon = GetGlobalNumber("k1r_paz_conts");
    if(iCon < 0) { iCon += 256; }

    int id = GetGlobalNumber("k1r_paz_totconts");
    if(id < 0) { id += 256; }

    int idefCon = GetGlobalNumber("k1r_paz_defconts");
    if(idefCon < 0) { idefCon += 256; }

    int idefCon_spec = GetGlobalNumber("k1r_paz_speconts");

    int idef;
    string sOpponent = " opponents";

    switch(idefCon_spec)
    {
    case 0: { idef = 0; break;}
    case 1: { idef = 5; break;}
    case 2: { idef = 4; break;}
    case 3: { idef = 3; break;}
    case 4: { idef = 2; break;}
    case 5: { idef = 1; sOpponent = " opponent"; break;}
    }
    if(idefCon_spec == 0) { SetGlobalNumber("k1r_paztourney", 6); }
    if(idefCon_spec == 1 && (GetGlobalString("k1r_paz_winner") == "Skirata") && (GetJournalEntry("k1r_paztourney") == 7)) { SetGlobalNumber("k1r_paztourney", 6); }

    if(GetGlobalString("k1r_paz_winner") == "Ceeiia")   { SetLocalBoolean(GetObjectByTag("k1r_ceeiia"), 50, 1);    SetLocalBoolean(GetObjectByTag("k1r_sykallin"), 55, 1);   }
    else if(GetGlobalString("k1r_paz_winner") == "Sykallin") { SetLocalBoolean(GetObjectByTag("k1r_sykallin"), 50, 1);  SetLocalBoolean(GetObjectByTag("k1r_irog"), 55, 1);       }
    else if(GetGlobalString("k1r_paz_winner") == "Irog")     { SetLocalBoolean(GetObjectByTag("k1r_irog"), 50, 1);      SetLocalBoolean(GetObjectByTag("k1r_cs-32"), 55, 1);      }
    else if(GetGlobalString("k1r_paz_winner") == "CS-32")    { SetLocalBoolean(GetObjectByTag("k1r_cs-32"), 50, 1);     SetLocalBoolean(GetObjectByTag("k1r_skirata"), 55, 1);    }
    else if(GetGlobalString("k1r_paz_winner") == "Skirata")  { SetLocalBoolean(GetObjectByTag("k1r_paz_champ"), 50, 1); }

    string sMessage = IntToString(idef) + sOpponent;

//    SetCustomToken(2015, sWin);
//    SetCustomToken(2016, IntToString(idefCon_spec));
    SetCustomToken(2017, IntToString(id - iCon));
    SetCustomToken(2018, IntToString(iCon));
    SetCustomToken(2019, sMessage);
//    SetCustomToken(2020, IntToString(idefCon));
}