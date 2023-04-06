void main() {
	object oPC = GetFirstPC();
	ApplyEffectToObject(0, EffectHeal((GetMaxHitPoints(oPC) - GetCurrentHitPoints(oPC))), oPC, 0.0);
	AssignCommand(oPC, ActionMoveAwayFromObject(GetObjectByTag("end_door07"), FALSE, 3.0));
	SetGlobalFadeIn(0.0, 1.0);
}