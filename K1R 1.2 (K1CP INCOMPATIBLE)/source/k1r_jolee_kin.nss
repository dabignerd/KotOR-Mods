//:: k_def_death01
/*
    Default On Death Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_switch"
#include "k_inc_debug"
#include "k_inc_generic"

void main()
{
//    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_DEATH);

    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        SpeakString("GEN_I_AM_DEAD", TALKVOLUME_SILENT_TALK);
        //Shout Attack my target, only works with the On Spawn In setup
        SpeakString("GEN_ATTACK_MY_TARGET", TALKVOLUME_SILENT_TALK);
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1007));
    }

    int iLive = GetGlobalNumber("K1R_JOLEE_KINRATH");
    iLive = iLive - 1;
    SetGlobalNumber("K1R_JOLEE_KINRATH", iLive);

    SendMessageToPC(GetFirstPC(), "iLive is: " + IntToString(iLive));

    if( iLive == 0 )
    {
        SetGlobalBoolean("K1R_JOLEE_FIGHT", 1);
        CancelCombat(GetPartyMemberByIndex(0));
        CancelCombat(GetPartyMemberByIndex(1));
        CancelCombat(GetPartyMemberByIndex(2));
        CancelCombat(GetObjectByTag("Jolee"));

        SetCommandable(1, GetFirstPC());
        AssignCommand(GetFirstPC(), ClearAllActions());

        DelayCommand(0.25, AssignCommand(GetFirstPC(), ActionStartConversation(GetObjectByTag("Jolee"), "kas24_jolee_01")));
    }
}
