void main() {
	object oPC = GetFirstPC();
	object oCarth = GetObjectByTag("LevCarth");
	object oBastila = GetObjectByTag("LevBastila", 0);
	object oK1r_hurka = GetObjectByTag("k1r_hurka", 0);

	SetSoloMode(1);

	ApplyEffectToObject(1, EffectMovementSpeedIncrease(2), oCarth, 100.0);
	ApplyEffectToObject(1, EffectMovementSpeedIncrease(2), oBastila, 100.0);
//	ApplyEffectToObject(1, EffectMovementSpeedDecrease(46), oBastila, 100.0);

	DelayCommand(0.2, AssignCommand(oCarth,   ActionDoCommand(SetFacingPoint(GetPosition(oBastila)))));
	DelayCommand(0.2, AssignCommand(oBastila, ActionDoCommand(SetFacing(GetFacing(oK1r_hurka)))));

	DelayCommand(2.8, AssignCommand(oCarth,     ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
	DelayCommand(2.8, AssignCommand(oK1r_hurka, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk11", 0), 0, 0.0)));
	DelayCommand(2.8, AssignCommand(oPC,        ActionMoveToObject(GetObjectByTag("k1r_hurka_walk12", 0), 0, 0.0)));
	DelayCommand(2.8, AssignCommand(oBastila,   ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));

	SetGlobalFadeIn(2.5, 1.5, 0.0, 0.0, 0.0);

	ActionPauseConversation();

	DelayCommand(2.5, ActionResumeConversation());
        NoClicksFor(33.0);
//	DelayCommand(3.0,  AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(4.0,  AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
	DelayCommand(5.0,  AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(6.0,  AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(7.0,  AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(8.0,  AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(9.0,  AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
	DelayCommand(10.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(11.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(12.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(13.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(14.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
	DelayCommand(15.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(16.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(17.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(18.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(19.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
	DelayCommand(20.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(21.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(22.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(23.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(24.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
	DelayCommand(25.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(26.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(27.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(28.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(29.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
	DelayCommand(30.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(31.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(32.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(33.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));

//	DelayCommand(1.0,  AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk13", 0), 0, 0.0)));
//	DelayCommand(2.0,  AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(3.0,  AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(4.0,  AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
	DelayCommand(5.0,  AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(6.0,  AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(7.0,  AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(8.0,  AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(9.0,  AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
	DelayCommand(10.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));

//	DelayCommand(10.0, ApplyEffectToObject(1, EffectMovementSpeedDecrease(46), oCarth, 10.0));

//	DelayCommand(11.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(12.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(13.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(14.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
	DelayCommand(15.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(16.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(17.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(18.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(19.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
	DelayCommand(20.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));

//	DelayCommand(20.5, ApplyEffectToObject(1, EffectMovementSpeedDecrease(48), oCarth, 10.0));

//	DelayCommand(21.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(22.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(23.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(24.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
	DelayCommand(25.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(26.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(27.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(28.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(29.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
	DelayCommand(30.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));

//	DelayCommand(30.0, ApplyEffectToObject(1, EffectMovementSpeedDecrease(46), oCarth, 5.0));

//	DelayCommand(31.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(32.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));
//	DelayCommand(33.0, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("k1r_hurka_walk14", 0), 0, 0.0)));

}