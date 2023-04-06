void main()
{
    SetGlobalFadeIn(0.0, 1.5);

    effect eTired = EffectAbilityDecrease(ABILITY_DEXTERITY, 4);
    effect eTired1 = EffectAbilityDecrease(ABILITY_INTELLIGENCE, 4);
    effect eTired2 = EffectAbilityIncrease(ABILITY_CHARISMA, 2);

    eTired = SetEffectIcon(eTired, 28);
    eTired1 = SetEffectIcon(eTired1, 16);
    eTired2 = SetEffectIcon(eTired2, 8);

    object oPC = GetFirstPC();
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eTired, oPC, 600.0);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eTired1, oPC, 600.0);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eTired2, oPC, 600.0);
}