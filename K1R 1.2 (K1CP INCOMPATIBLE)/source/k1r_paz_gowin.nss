//void AddPM(int iSlot, string sPM);
void AddPM(int iSlot, int iIndex);

void main()
{
    string sPM1 = GetGlobalString("k1r_Pazaak_PM1");
    string sPM2 = GetGlobalString("k1r_Pazaak_PM2");

    if(GetGlobalBoolean("K_PARTY_STORED") == TRUE)
    {
        AddPM(1, GetGlobalNumber("K_PARTY_STORE1"));
        AddPM(2, GetGlobalNumber("K_PARTY_STORE2")); 

        SetGlobalBoolean("K_PARTY_STORED", FALSE);

        SetGlobalNumber("K_PARTY_STORE1", -1);
        SetGlobalNumber("K_PARTY_STORE2", -1);
    }

    DelayCommand(0.01, StartNewModule("manm26ab", "paztourney"));
}

//void AddPM(int iSlot, string sPM)
void AddPM(int iSlot, int iIndex)
{

/*
    int iIndex;
    if(sPM == "Bastila") { iIndex = 0; }
    if(sPM == "Shadow") { iIndex = 0; }
    if(sPM == "Matilda") { iIndex = 0; }
    if(sPM == "Canderous") { iIndex = 1; }
    if(sPM == "Carth") { iIndex = 2; }
    if(sPM == "HK-47") { iIndex = 3; }
    if(sPM == "Jolee") { iIndex = 4; }
    if(sPM == "Juhani") { iIndex = 5; }
    if(sPM == "Kay") { iIndex = 5; }
    if(sPM == "Mission") { iIndex = 6; }
    if(sPM == "T3-M4") { iIndex = 7; }
    if(sPM == "Zaalbar") { iIndex = 8; }
*/

    if(iIndex > -1)
    {
        object oToss = SpawnAvailableNPC(iIndex, GetLocation(GetFirstPC()));
        AddPartyMember(iIndex, oToss);
    }
}