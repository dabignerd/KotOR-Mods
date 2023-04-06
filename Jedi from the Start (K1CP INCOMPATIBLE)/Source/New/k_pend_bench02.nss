void main() {

	object oPC = GetFirstPC();
	int iClass = (GetClassByPosition(2, oPC));
	object oLocker = GetObjectByTag("end_locker01");
	object oSaber;
	object oInvItem;

//Create items using the starting footlocker as a dummy container. This avoids triggering messages and log feedback
	if (iClass == 3) {
		oSaber = CreateItemOnObject("g_w_lghtsbr01", oLocker, 1);
		GiveItem(oSaber, oPC);
		oInvItem = CreateItemOnObject("G_W_SBRCRSTL15", oLocker, 1);
		GiveItem(oInvItem, oPC);
		oInvItem = CreateItemOnObject("G_W_SBRCRSTL16", oLocker, 1);
		GiveItem(oInvItem, oPC);
	}
	else if (iClass == 4) {
		oSaber = CreateItemOnObject("g_w_lghtsbr03", oLocker, 1);
		GiveItem(oSaber, oPC);
		oInvItem = CreateItemOnObject("G_W_SBRCRSTL14", oLocker, 1);
		GiveItem(oInvItem, oPC);
		oInvItem = CreateItemOnObject("G_W_SBRCRSTL15", oLocker, 1);
		GiveItem(oInvItem, oPC);
	}
	else if (iClass == 5) {
		oSaber = CreateItemOnObject("g_w_lghtsbr04", oLocker, 1);
		GiveItem(oSaber, oPC);
		oInvItem = CreateItemOnObject("G_W_SBRCRSTL14", oLocker, 1);
		GiveItem(oInvItem, oPC);
		oInvItem = CreateItemOnObject("G_W_SBRCRSTL16", oLocker, 1);
		GiveItem(oInvItem, oPC);
	}

	oInvItem = CreateItemOnObject("jc_colo_c", oLocker, 1);
	GiveItem(oInvItem, oPC);
	oInvItem = CreateItemOnObject("jc_colo_d", oLocker, 1);
	GiveItem(oInvItem, oPC);
	oInvItem = CreateItemOnObject("jc_colo_o", oLocker, 1);
	GiveItem(oInvItem, oPC);
	oInvItem = CreateItemOnObject("jc_colo_p", oLocker, 1);
	GiveItem(oInvItem, oPC);
	oInvItem = CreateItemOnObject("jc_colo_s", oLocker, 1);
	GiveItem(oInvItem, oPC);

//Show Upgrade Screen
	ShowUpgradeScreen(oSaber);

//Remove extra Crystals
	DelayCommand(0.1, GiveItem(GetItemPossessedBy(oPC, "G_W_SBRCRSTL14"), oLocker));
	DelayCommand(0.1, DestroyObject(GetObjectByTag("G_W_SBRCRSTL14")));
	DelayCommand(0.1, GiveItem(GetItemPossessedBy(oPC, "G_W_SBRCRSTL15"), oLocker));
	DelayCommand(0.1, DestroyObject(GetObjectByTag("G_W_SBRCRSTL15")));
	DelayCommand(0.1, GiveItem(GetItemPossessedBy(oPC, "G_W_SBRCRSTL16"), oLocker));
	DelayCommand(0.1, DestroyObject(GetObjectByTag("G_W_SBRCRSTL16")));
	DelayCommand(0.1, GiveItem(GetItemPossessedBy(oPC, "jc_colo_c"), oLocker));
	DelayCommand(0.1, DestroyObject(GetObjectByTag("jc_colo_c")));
	DelayCommand(0.1, GiveItem(GetItemPossessedBy(oPC, "jc_colo_d"), oLocker));
	DelayCommand(0.1, DestroyObject(GetObjectByTag("jc_colo_d")));
	DelayCommand(0.1, GiveItem(GetItemPossessedBy(oPC, "jc_colo_o"), oLocker));
	DelayCommand(0.1, DestroyObject(GetObjectByTag("jc_colo_o")));
	DelayCommand(0.1, GiveItem(GetItemPossessedBy(oPC, "jc_colo_p"), oLocker));
	DelayCommand(0.1, DestroyObject(GetObjectByTag("jc_colo_p")));
	DelayCommand(0.1, GiveItem(GetItemPossessedBy(oPC, "jc_colo_s"), oLocker));
	DelayCommand(0.1, DestroyObject(GetObjectByTag("jc_colo_s")));

//Force player to equip new Lightsaber
	DelayCommand(0.1, AssignCommand(oPC, ActionEquipItem(GetItemPossessedBy(oPC, "g_w_lghtsbr01"), 4)));
	DelayCommand(0.1, AssignCommand(oPC, ActionEquipItem(GetItemPossessedBy(oPC, "g_w_lghtsbr03"), 4)));
	DelayCommand(0.1, AssignCommand(oPC, ActionEquipItem(GetItemPossessedBy(oPC, "g_w_lghtsbr04"), 4)));
	DelayCommand(0.1, AssignCommand(oPC, ActionEquipItem(GetItemPossessedBy(oPC, "jc_ls_c"), 4)));
	DelayCommand(0.1, AssignCommand(oPC, ActionEquipItem(GetItemPossessedBy(oPC, "jc_ls_d"), 4)));
	DelayCommand(0.1, AssignCommand(oPC, ActionEquipItem(GetItemPossessedBy(oPC, "jc_ls_o"), 4)));
	DelayCommand(0.1, AssignCommand(oPC, ActionEquipItem(GetItemPossessedBy(oPC, "jc_ls_p"), 4)));
	DelayCommand(0.1, AssignCommand(oPC, ActionEquipItem(GetItemPossessedBy(oPC, "jc_ls_s"), 4)));

}