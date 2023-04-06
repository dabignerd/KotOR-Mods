void Talk(object oWinner, string sName);

void main()
{
    int iResult = GetLastPazaakResult();
    string sName = GetGlobalString("k1r_paz_winner");
//    string sName = GetLastConversation();

    SetGlobalBoolean("k1r_paz_matchwon", 0);

//    SendMessageToPC(GetFirstPC(), "Speaker was: " + sName + ". Result: " + IntToString(iResult) + ".");

    object oOrg = GetObjectByTag("k1r_paz_org");
    object oWinner = GetObjectByTag(sName);

    SetGlobalBoolean("k1r_paz_matchwon", iResult);
    SetLocalBoolean(GetObjectByTag(sName), 40, iResult);
//    SetLocalBoolean(oOrg, 40, iResult);

    if(  sName == "k1r_ceeiia")    { SetGlobalNumber("k1r_paztourney", 5);}
    if(  sName == "k1r_sykallin")  { SetGlobalString("k1r_paz_winner", "Sykallin"); if(GetGender(GetFirstPC()) == GENDER_FEMALE) { SetLocalBoolean(GetObjectByTag("k1r_sykallin"), 42, 1); } else { SetLocalBoolean(GetObjectByTag("k1r_sykallin"), 42, 0); } }
    if(  sName == "k1r_irog")      { SetGlobalString("k1r_paz_winner", "Irog"); }
    if(  sName == "k1r_cs-32")     { SetGlobalString("k1r_paz_winner", "CS-32"); }
    if(  sName == "k1r_paz_champ") { SetGlobalString("k1r_paz_winner", "Skirata"); }


    if(GetGlobalNumber("k1r_paztourney") == 5)
    {
        if(GetName(GetObjectByTag(sName)) == "Ceeiia Rylo")
        {
            SetGlobalString("k1r_paz_winner", "Ceeiia");
            if(GetLocalBoolean(GetObjectByTag(sName), 40) == 0) { SetGlobalNumber("k1r_paz_speconts", 0); }
        }
        else
        {
              int iOld = GetGlobalNumber("k1r_paz_speconts");
//              if(iResult == 0) { SetGlobalNumber("k1r_paz_speconts", iOld - 1); }
//            SetGlobalNumber("k1r_paz_speconts", 5);
        }
//        Talk(oWinner, sName);
    }
    Talk(oWinner, sName);
}

void Talk(object oWinner, string sName)
{
//    SendMessageToPC(GetFirstPC(), "Result is: " + IntToString(GetIsObjectValid(oWinner)));
//    SendMessageToPC(GetFirstPC(), "Winner is: " + GetGlobalString("k1r_paz_winner"));

    if(sName == "k1r_pazprelim_5a") { SetLocalBoolean(GetObjectByTag("k1r_pazprelim_5a"), 32, 1); }

    SetCommandable(1, oWinner);
//    AssignCommand(oWinner, ClearAllActions());
    AssignCommand(oWinner, ActionStartConversation(GetFirstPC(), "", 0));
//    if(sName != "k1r_pazprelim_5a") { AssignCommand(oWinner, ActionStartConversation(GetFirstPC(), "", 0)); }
//    else { AssignCommand(oWinner, ActionStartConversation(GetFirstPC(), "k1r_pazprelim_05", 0)); }
}