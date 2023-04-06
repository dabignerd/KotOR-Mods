//:: k_psta_bastd.nss
/*
    Bastila's death at restored DS romance ending
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_switch"
#include "k_inc_debug"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_DEATH);

    object oSta_carth = GetObjectByTag("sta_carth", 0);
    object oPC = GetFirstPC();

    AssignCommand(oSta_carth, ClearAllActions());
    AssignCommand(oPC, ClearAllActions());
    SetGlobalFadeOut(1.0, 3.0, 0.0, 0.0, 0.0);

    int int1 = 0;
    object oNPC = GetPartyMemberByIndex(int1);
    while (GetIsObjectValid(oNPC)) {
        if ((GetCurrentHitPoints(oNPC) < 1)) {
            ApplyEffectToObject(0, EffectResurrection(), oNPC, 0.0);
            ApplyEffectToObject(0, EffectHeal(1), oNPC, 0.0);
        }
        (int1++);
        oNPC = GetPartyMemberByIndex(int1);
    }

    if ((GetIsObjectValid(oSta_carth) == 1)) {
        if ((oPC == GetPartyMemberByIndex(0))) {
            AssignCommand(oPC, ClearAllActions());
            AssignCommand(oSta_carth, ClearAllActions());
            CancelCombat(oPC);
            AssignCommand(oSta_carth, DelayCommand(3.0, ActionStartConversation(oPC, "k_sta_carth", 0, 0, 1, "", "", "", "", "", "")));
        }
        else {
            SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
            SetPartyLeader(0xFFFFFFFF);
            object oNPC = GetPartyMemberByIndex(1);
            object object8 = GetPartyMemberByIndex(2);
            NoClicksFor(0.7);
            AssignCommand(oPC, ClearAllActions());
            AssignCommand(oSta_carth, ClearAllActions());
            CancelCombat(oPC);

            AssignCommand(oPC, DelayCommand(0.2, JumpToObject(oSta_carth, 1)));
            AssignCommand(oPC, DelayCommand(0.4, SetFacingPoint(GetPosition(oSta_carth))));

            AssignCommand(oNPC, DelayCommand(0.5, JumpToObject(oPC, 1)));
            AssignCommand(object8, DelayCommand(0.5, JumpToObject(oPC, 1)));
            AssignCommand(oSta_carth, DelayCommand(3.0, ActionStartConversation(oPC, "k_sta_carth", 0, 0, 1, "", "", "", "", "", "")));
        }
    }
    SetGlobalFadeIn(3.0, 1.0, 0.0, 0.0, 0.0);
}