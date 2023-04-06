//:: k_hen_dialogue01
/*
    On Dialogue Script for henchmen.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_switch"
#include "k_inc_generic"

void main()
{
//    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_HENCH_EVENT_ON_DIALOGUE);

    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        if(GetCommandable())
        {
            int nMatch = GetListenPatternNumber();
            object oShouter = GetLastSpeaker();
            object oIntruder;
            if (nMatch == -1)
            {
                ClearAllActions();
                if(GetGlobalNumber("K1R_JOLEE_FIGHT") < 2)
                { BeginConversation("kas24_jolee_01", GetFirstPC()); }
                else
                { BeginConversation(); }
            }
            else
            {
                GN_RespondToShout(oShouter, nMatch, GetLastHostileActor(oShouter));
            }
        }
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_DIALOGUE))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1004));
    }
}
