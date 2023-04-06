#include "k_inc_man"
void main()
{
    int nEvent = GetUserDefinedEventNumber();
    switch (nEvent)
    {
        case 1007:
        {
		int nGlobal = GetGlobalNumber("DAN_MAND_STATE");
		if (nGlobal < 4) {
			CreateItemOnObject(("g_mandat" + IntToString((nGlobal))), OBJECT_SELF, 1);
		}
            SetGlobalNumber("DAN_MAND_STATE",nGlobal + 1);
            //AurPostString("Mandalorian Set To: " + IntToString(nState + 1),5,5,5.0);
            AddJournalQuestEntry("dan_raiders", 30);
        }

        break;
    }
    if(nEvent == HOSTILE_RETREAT)
    {
        UT_ReturnToBase();
    }
}

