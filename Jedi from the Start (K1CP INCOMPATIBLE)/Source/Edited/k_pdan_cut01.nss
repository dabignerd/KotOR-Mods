void main() {
	object oPC = GetFirstPC();
	object object3 = GetObjectByTag("bastila", 0);
	AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(5, oPC), 1));
	AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(4, oPC), 1));
	AssignCommand(object3, ActionUnequipItem(GetItemInSlot(5, object3), 1));
	AssignCommand(object3, ActionUnequipItem(GetItemInSlot(4, object3), 1));
	object object5;
	int int1 = GetClassByPosition(2, oPC);
	
	if (GetIsObjectValid(GetItemPossessedBy(oPC, "g_w_lghtsbr01"))) {
		object5 = CreateItemOnObject("dan13_practice01", oPC, 1);
	}
	else if (GetIsObjectValid(GetItemPossessedBy(oPC, "g_w_lghtsbr02"))) {
		object5 = CreateItemOnObject("dan13_practice02", oPC, 1);
	}
	else if (GetIsObjectValid(GetItemPossessedBy(oPC, "g_w_lghtsbr03"))) {
		object5 = CreateItemOnObject("dan13_practice03", oPC, 1);
	}
	else if (GetIsObjectValid(GetItemPossessedBy(oPC, "g_w_lghtsbr04"))) {
		object5 = CreateItemOnObject("dan13_practice04", oPC, 1);
	}
	else if (GetIsObjectValid(GetItemPossessedBy(oPC, "g_w_lghtsbr05"))) {
		object5 = CreateItemOnObject("dan13_practice05", oPC, 1);
	}
	else if (GetIsObjectValid(GetItemPossessedBy(oPC, "jc_ls_c"))) {
		object5 = CreateItemOnObject("dan13_practice06", oPC, 1);
	}
	else if (GetIsObjectValid(GetItemPossessedBy(oPC, "jc_ls_d"))) {
		object5 = CreateItemOnObject("dan13_practice07", oPC, 1);
	}
	else if (GetIsObjectValid(GetItemPossessedBy(oPC, "jc_ls_o"))) {
		object5 = CreateItemOnObject("dan13_practice08", oPC, 1);
	}
	else if (GetIsObjectValid(GetItemPossessedBy(oPC, "jc_ls_p"))) {
		object5 = CreateItemOnObject("dan13_practice09", oPC, 1);
	}
	else if (GetIsObjectValid(GetItemPossessedBy(oPC, "jc_ls_s"))) {
		object5 = CreateItemOnObject("dan13_practice10", oPC, 1);
	}
	else if ((int1 == 5)){
		object5 = CreateItemOnObject("dan13_practice04", oPC, 1);
	}
	else if ((int1 == 4)) {
		object5 = CreateItemOnObject("dan13_practice03", oPC, 1);
	}
	else {
		object5 = CreateItemOnObject("dan13_practice01", oPC, 1);
	}

	object object7 = CreateItemOnObject("dan13_practice04", object3, 1);
	AssignCommand(oPC, ActionEquipItem(object5, 4, 1));
	AssignCommand(object3, ActionEquipItem(object7, 4, 1));
}