void main()
{
    int im = 5;
    SetGlobalNumber("k1r_pazprelimwon", im);
    SetGlobalNumber("k1r_paztourney", 4);
    SetGlobalNumber("k1r_paz_speconts", 5);
    SetGlobalBoolean("k1r_paz_matchwon", 0);
    SetGlobalString("k1r_paz_winner", "Ceeiia");
    SetCustomToken(2015, "Ceeiia");
    SetCustomToken(2010, "Ceeiia");

        int itefCon = GetGlobalNumber("k1r_paz_totconts");
        int idefCon_spec = GetGlobalNumber("k1r_paz_speconts");

        int iAmount;
        iAmount = itefCon + idefCon_spec;     // SendMessageToPC(GetFirstPC(), "Amount: " + IntToString(iAmount));
        iAmount *= 500;                       // SendMessageToPC(GetFirstPC(), "Amount: " + IntToString(iAmount));
        float fM = IntToFloat(iAmount);       // SendMessageToPC(GetFirstPC(), "Amount: " + FloatToString(fM));
        float fAmoun = IntToFloat(100) / 100;
        fAmoun = fAmoun * fM;                 // SendMessageToPC(GetFirstPC(), "Amount: " + FloatToString(fAmoun));
        int iAm = FloatToInt(fAmoun);         // SendMessageToPC(GetFirstPC(), "Amount: " + IntToString(iAm));

        SetCustomToken(2023, IntToString(iAm));
}