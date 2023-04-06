void main()
{
    int iDeck;
    int iNumber = GetGlobalNumber("k1r_paz_prelim");
    string sN = GetGlobalString("k1r_paz_winner");
    string sName;
    if(GetGlobalNumber("k1r_paztourney") == 5)
    {
        sName = GetTag(GetLastSpeaker());
        SetGlobalString("k1r_paz_winner", sName);
    }

    switch(iNumber)
    {
    case 1:
         {
             iDeck = Random(6) + 1;
         }
    case 2:
         {
             iDeck = Random(6) + 1;
         }
    case 3:
         {
             iDeck = Random(6) + 1;
         }
    case 4:
         {
             iDeck = Random(6) + 1;
         }
    case 5:
         {
             iDeck = Random(6) + 1;
         }
    case 6:
         {
             iDeck = Random(6) + 1;
         }
    case 7:
         {
             iDeck = Random(6) + 1;
         }
    case 8:
         {
             iDeck = #2DAMEMORY10#;
         }
    case 9:
         {
             iDeck = #2DAMEMORY11#;
         }
    case 10:
         {
             iDeck = #2DAMEMORY12#;
         }
    case 11:
         {
             iDeck = #2DAMEMORY13#;
         }
    case 12:
         {
             iDeck = #2DAMEMORY14#;
         }
    }

//    SendMessageToPC(GetFirstPC(), "Deck was: " + IntToString(iDeck));
    SetGlobalNumber("k1r_inprelim", 1);
    if(sName == "k1r_pazprelim_5a")
    {
        SetLocalBoolean(GetObjectByTag("k1r_pazprelim_5a"), 31, 1);
//        DelayCommand(0.5, PlayPazaak(iDeck, "k1r_paz_matchrep", 0));
    }
    if(GetGlobalNumber("k1r_paztourney") >= 4) { SetGlobalString("k1r_paz_winner", sN); }
    DelayCommand(0.5, PlayPazaak(iDeck, "k1r_paz_matchrep", 0));
}