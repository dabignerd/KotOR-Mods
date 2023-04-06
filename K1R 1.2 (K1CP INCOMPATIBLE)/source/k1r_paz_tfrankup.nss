void main()
{
    string sMatch = GetGlobalString("k1r_paz_winner");
    int iSet;
    if(sMatch == "Ceeiia")   { SetCustomToken(2015, "Sykallin"); SetGlobalString("k1r_paz_winner", "k1r_sykallin");  iSet = 9;}
    if(sMatch == "Sykallin") { SetCustomToken(2015, "Irog"); SetGlobalString("k1r_paz_winner", "k1r_irog");      iSet = 10;}
    if(sMatch == "Irog")     { SetCustomToken(2015, "CS-32"); SetGlobalString("k1r_paz_winner", "k1r_cs-32");     iSet = 11;}
    if(sMatch == "CS-32")    { SetCustomToken(2015, "Skirata"); SetGlobalString("k1r_paz_winner", "k1r_paz_champ"); iSet = 12;}

    SetGlobalNumber("k1r_paz_prelim", iSet);
    SetGlobalNumber("k1r_inprelim", 1);
}