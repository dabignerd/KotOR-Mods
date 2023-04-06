void main() {

	object oPC = GetFirstPC();
	object oLocker = GetObjectByTag("end_locker01");
	object oSaber1 = GetItemPossessedBy(oPC, "g_w_lghtsbr01");
	object oSaber2 = GetItemPossessedBy(oPC, "g_w_lghtsbr03");
	object oSaber3 = GetItemPossessedBy(oPC, "g_w_lghtsbr04");

	if (GetLocked(GetObjectByTag("end_door01")) && ((GetIsObjectValid(oSaber1)) || (GetIsObjectValid(oSaber2)) || (GetIsObjectValid(oSaber3)))){

//Move saber to starting footlocker and destroy it. It will be readded in next script, but this forces the player to unequip, which prevents a crash
		GiveItem(oSaber1, oLocker);
		GiveItem(oSaber2, oLocker);
		GiveItem(oSaber3, oLocker);
		
		DestroyObject(oSaber1);
		DestroyObject(oSaber2);
		DestroyObject(oSaber3);

		SetLocked(GetObjectByTag("end_door01"),FALSE);

		ActionStartConversation(GetFirstPC());

	}
	else {

		ShowUpgradeScreen(OBJECT_INVALID);

	}
}