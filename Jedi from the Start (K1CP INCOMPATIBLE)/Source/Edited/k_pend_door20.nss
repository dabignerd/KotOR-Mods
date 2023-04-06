void sub1(string stringParam1, int intParam2, int intParam3);

void sub1(string stringParam1, int intParam2, int intParam3) {
	location location1 = GetLocation(GetNearestObjectByTag(stringParam1, OBJECT_SELF, 1));
	effect efVisual = EffectVisualEffect(3003, 0);
	effect effect3 = EffectVisualEffect(6002, 0);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	if (intParam2) {
		ApplyEffectToObject(0, effect3, GetFirstPC(), 0.0);
	}
	if (intParam3) {
		PlayRumblePattern(14);
	}
}

void main() {
	if (GetGlobalBoolean("END_BRIDGE_SEALED")) {
		ActionStartConversation(GetFirstPC(), "end_bridgeseal", 0, 0, 1, "", "", "", "", "", "");
	}
	else {
		if ((GetGlobalNumber("END_ROOM8_DEAD") >= 2)) {
			object oEnd_bridgesith1 = CreateObject(1, "end_bridgesith1", GetLocation(GetObjectByTag("wp_end_bridgesith1", 0)), 0);
			object oEnd_bridgesith2 = CreateObject(1, "end_bridgesith2", GetLocation(GetObjectByTag("wp_end_bridgesith2", 0)), 0);
			DelayCommand(8.0, SignalEvent(oEnd_bridgesith1, EventUserDefined(20)));
			DelayCommand(12.0, SignalEvent(oEnd_bridgesith2, EventUserDefined(20)));
			DelayCommand(8.0, SignalEvent(GetObjectByTag("end_bridgerep1", 0), EventUserDefined(20)));
			DelayCommand(12.0, SignalEvent(GetObjectByTag("end_bridgerep2", 0), EventUserDefined(20)));
			DelayCommand(8.0, sub1("wp_end_bridgeexp1", 0, 0));
			DelayCommand(12.0, sub1("wp_end_bridgeexp2", 0, 0));
			SetLocked(OBJECT_SELF, 0);
			ActionOpenDoor(OBJECT_SELF);
			SetGlobalNumber("END_TRASK_DLG", 31);
		}
	}
	object object3 = GetObjectByTag("Carth", 0);
	DestroyObject(object3, 0.0, 0, 0.0);
}