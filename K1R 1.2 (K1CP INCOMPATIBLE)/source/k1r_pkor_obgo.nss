///////////////////////////////////////////
//  k1r_pkor_obgo.nss
//  =================
//  Replaces the obelisk activation script
//  for the obelisk in Ajunta Pall's Tomb.
//
///////////////////////////////////////////

void sub3();
void sub2(string stringParam1, string stringParam2, object objectParam3);

void sub3() {
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
}

void sub2(string stringParam1, string stringParam2, object objectParam3) {
    object object1 = GetObjectByTag(stringParam1, 0);
    object oPC = GetFirstPC();

    sub3();

    if ((GetIsObjectValid(object1) == 1)) {
        if ((oPC == GetPartyMemberByIndex(0))) {
            AssignCommand(oPC, ClearAllActions());
            AssignCommand(object1, ClearAllActions());

            CancelCombat(oPC);

            AssignCommand(object1, ActionStartConversation(oPC, stringParam2, 0, 0, 1, "", "", "", "", "", ""));
        }
        else {
            SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);

            SetPartyLeader(0xFFFFFFFF);

            object oNPC = GetPartyMemberByIndex(1);
            object object8 = GetPartyMemberByIndex(2);

            NoClicksFor(0.7);

            AssignCommand(oPC, ClearAllActions());
            AssignCommand(object1, ClearAllActions());

            CancelCombat(oPC);

            if ((GetIsObjectValid(objectParam3) == 1)) {
                AssignCommand(oPC, DelayCommand(0.2, JumpToObject(objectParam3, 1)));
                AssignCommand(oPC, DelayCommand(0.4, SetFacingPoint(GetPosition(object1))));
            }
            else {
                AssignCommand(oPC, DelayCommand(0.2, JumpToObject(object1, 1)));
            }

            AssignCommand(oNPC, DelayCommand(0.5, JumpToObject(oPC, 1)));
            AssignCommand(object8, DelayCommand(0.5, JumpToObject(oPC, 1)));
            AssignCommand(object1, ActionDoCommand(SetGlobalFadeIn(0.5, 2.0, 0.0, 0.0, 0.0)));
            AssignCommand(object1, ActionStartConversation(oPC, stringParam2, 0, 0, 1, "", "", "", "", "", ""));
        }
    }
}

void sub1()
{
    PauseGame(0);
    sub2("kor37_firescene", "", OBJECT_INVALID);
}

void main()
{
    DelayCommand(0.5, sub1());
}