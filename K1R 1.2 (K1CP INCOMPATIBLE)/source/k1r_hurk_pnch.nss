void main()
{ 
     object oNPC = GetObjectByTag("k1r_sith01");

     object oHurka = GetObjectByTag("k1r_hurka");

     object oNPC1 = GetObjectByTag("k1r_sithc");


ActionPauseConversation();

 ChangeToStandardFaction(oNPC, STANDARD_FACTION_PREDATOR);
 ChangeToStandardFaction(oHurka, STANDARD_FACTION_PREY);

DelayCommand(1.5, AssignCommand(oNPC1, ActionPlayAnimation(ANIMATION_LOOPING_TALK_FORCEFUL, 1.0, 1.25)));

AssignCommand(oHurka, ActionAttack(oNPC, TRUE));

    DelayCommand(1.0, ApplyEffectToObject(1, EffectAssuredHit(), oNPC, 100.0));

    DelayCommand(1.0, ApplyEffectToObject(1, EffectAbilityIncrease(0, 55), oNPC, 100.0));

DelayCommand(1.5, CancelCombat(oHurka));

DelayCommand(1.5, AssignCommand(oNPC, ActionAttack(oHurka, FALSE)));

SetGlobalNumber("K1R_HURKA_STATE", 4);

DelayCommand(5.5, ActionResumeConversation());

}