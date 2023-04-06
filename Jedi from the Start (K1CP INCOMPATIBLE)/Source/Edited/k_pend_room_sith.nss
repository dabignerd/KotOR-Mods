void main() {
	object oEnd_sith2 = GetObjectByTag("end_sith2", 0);
	object oEnd_sith3 = GetObjectByTag("end_sith3", 0);
	object oPC = GetFirstPC();
	SetMinOneHP(oEnd_sith2, 0);
	SetMinOneHP(oEnd_sith3, 0);
	ExecuteScript("k_pend_aion", oEnd_sith2, 0xFFFFFFFF);
	ExecuteScript("k_pend_aion", oEnd_sith3, 0xFFFFFFFF);
	ChangeToStandardFaction(oEnd_sith2, 1);
	ChangeToStandardFaction(oEnd_sith3, 1);
	AssignCommand(oEnd_sith2, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oEnd_sith2, ActionAttack(oPC, 0)));
	AssignCommand(oEnd_sith3, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oEnd_sith3, ActionAttack(oPC, 0)));
	object oArea = GetArea(OBJECT_SELF);
	MusicBattleStop(oArea);
	DelayCommand(0.1, MusicBackgroundPlay(oArea));
}

