/*
   ==================================================================
  |                                                                  |
  |    k1r_oilslick                                                 |
  |                                                                  |
  |    A script for handling the Oil Slick item Bioware              |
  |    either cut or left inoperable in the game...                  |
  |                                                                  |
   ==================================================================
*/

void Slick(object oTarget, int bBeam = 0);

void main()
{
    /*
       Oil Slick

       Effects:
                75% chance to knockdown, DC15 to negate
                80% reduction to movement speed
                Dexterity penalty of 4, against a DC12 + Reflex save

       Range:   Medium
    */
    object oTarget = GetSpellTarget();

    Slick(oTarget, 1);

    object oPotential = GetFirstObjectInShape(SHAPE_SPHERE, 5.0, GetLocation(oTarget), 0, OBJECT_TYPE_CREATURE);
    while(GetIsObjectValid(oPotential))
    {
        Slick(oPotential);
        oPotential = GetNextObjectInShape(SHAPE_SPHERE, 5.0, GetLocation(oTarget), 0, OBJECT_TYPE_CREATURE);
    }
}

void Slick(object oTarget, int bBeam = 0)
{
    int iKnockchance = d20();
    int iKnockdown = 0;
    effect eMain = EffectMovementSpeedDecrease(80);
    effect eVFX = EffectVisualEffect(#2DAMEMORY23#);
//    effect eBump = EffectVisualEffect(2062);

    if(bBeam == 1)
    {
//        effect eBeamVFX = EffectBeam(2053, oTarget, BODY_NODE_HAND);
//        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeamVFX, oTarget, 1.0);

          vector lLoc = GetPositionFromLocation(GetLocation(oTarget));
          lLoc.z += 0.01;

          object oOil = CreateObject(OBJECT_TYPE_PLACEABLE, "k1r_oilslick", Location(lLoc, 0.0));
          DelayCommand(10.0, DestroyObject(oOil));
    }

    if(iKnockchance > 14)
    {
        if(d20() < 15)
        {
            iKnockdown = 1;
        }
    }

    eMain = SetEffectIcon(eMain, 28);

    SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), 1));
    if(iKnockdown == 1)
    {
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectKnockdown(), oTarget);
    }
    if(!ReflexSave(oTarget, 12 + GetReflexSavingThrow(oTarget)))
    {
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectAbilityDecrease(ABILITY_DEXTERITY, 4), oTarget, 10.0);
    }

    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oTarget);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eMain, oTarget, 10.0);
//    DelayCommand(0.33, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBump, oTarget, 1.5));

}