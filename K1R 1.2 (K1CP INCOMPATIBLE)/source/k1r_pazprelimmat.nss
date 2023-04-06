void Create(string sMatch, location lLoc);

void main()
{
    object oP = GetObjectByTag("k1r_paz_org");
    int iNumber = GetGlobalNumber("k1r_paz_prelim");
    location lLoc;
    location lLoca;
    string sMatch;

    location lOne = Location(Vector(-49.49, -8.48, 57.5), 115.0);
    location lOnea = Location(Vector(-44.36, -10.44, 57.5), 295.0);

    location lTwo = Location(Vector(-59.33, -3.45, 57.5), 135.0);
    location lTwoa = Location(Vector(-61.92, -0.65, 57.5), 315.0);

    location lThr = Location(Vector(-30.6, 22.98, 57.5), 90.0);
    location lThra = Location(Vector(-32.12, 29.42, 57.5), 270.0);

    location lFou = Location(Vector(-18.37, 10.85, 57.5), 270.0);
    location lFoua = Location(Vector(-17.11, 6.85, 57.5), 90.0);

    location lFiv = Location(Vector(-12.69, -3.31, 57.5), 180.0);
    location lFiva = Location(Vector(-10.69, -3.31, 57.5), 0.0);

    location lSix = Location(Vector(-87.44, 39.69, 56.38), 0.0);
    location lSixa = Location(Vector(-85.15, 39.07, 57.5), 180.0);

    location lSev = Location(Vector(-43.91, 33.58, 57.5), 90.0);
    location lSeva = Location(Vector(-43.64, 29.18, 57.5), 270.0);

    string sVer;
    int I = Random(3) + 1;
//    int I = 3;
    if(I == 1) { sVer = "a"; }
    else if(I == 2) { sVer = "b"; }
    else { sVer = "c"; }

    switch(iNumber)
    {
    case 1:
    {
        lLoc = lOne; lLoca = lOnea; sMatch = "k1r_pazprelim_1" + sVer; break;
    }
    case 2:
    {
        lLoc = lTwo; lLoca = lTwoa; sMatch = "k1r_pazprelim_2" + sVer; break;
    }
    case 3:
    {
        lLoc = lThr; lLoca = lThra; sMatch = "k1r_pazprelim_3" + sVer; break;
    }
    case 4:
    {
        lLoc = lFou; lLoca = lFoua; sMatch = "k1r_pazprelim_4" + sVer; break;
    }
    case 5:
    {
        lLoc = lFiv; lLoca = lFiva; sMatch = "k1r_pazprelim_5a"; break;
    }
    case 6:
    {
        lLoc = lSix; lLoca = lSixa; sMatch = "k1r_pazprelim_6" + sVer; break;
    }
    case 7:
    {
        lLoc = lSev; lLoca = lSeva; sMatch = "k1r_pazprelim_7" + sVer; break;
    }
    }

    SetGlobalString("k1r_paz_winner", sMatch);
    SetGlobalFadeOut(0.0, 0.5);
    DelayCommand(0.45, AssignCommand(GetNearestCreatureToLocation(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_NOT_PC, lLoc), ActionRandomWalk()));
    if( iNumber != 5 ) { DelayCommand(0.5, Create(sMatch, lLoc)); }
    if(sMatch == "k1r_pazprelim_5a") { SetCustomToken(2011, "Verun Kolzaar"); }
    DelayCommand(1.0, SetCommandable(1, GetObjectByTag(sMatch)));
    DelayCommand(1.05, AssignCommand(GetNearestCreatureToLocation(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_NOT_PC, lLoca), ActionRandomWalk()));
    DelayCommand(1.1, AssignCommand(GetFirstPC(), JumpToLocation(lLoca)));
    if( iNumber == 5) {     DelayCommand(1.2, AssignCommand(GetFirstPC(), ActionStartConversation(GetObjectByTag(sMatch), "k1r_pazprelim_05", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE))); }
    else { DelayCommand(1.2, AssignCommand(GetFirstPC(), ActionStartConversation(GetObjectByTag(sMatch), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE))); }
    DelayCommand(1.3, SetGlobalFadeIn(0.0, 0.5));
}

void Create(string sMatch, location lLoc)
{
    object oCreat = CreateObject(OBJECT_TYPE_CREATURE, sMatch, lLoc);
    SetCustomToken(2011, GetName(oCreat));
    if(sMatch == "k1r_pazprelim_5a") { SetCustomToken(2011, "Verun Kolzaar"); SetLocalBoolean(oCreat, 20, 1); }
}