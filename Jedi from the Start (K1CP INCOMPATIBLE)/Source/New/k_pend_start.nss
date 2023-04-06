void fLevelUp() {
	ShowLevelUpGUI();
}

void main()
{
	object oLocker = GetObjectByTag("end_locker01");

	object oInvItem = GetFirstItemInInventory(oLocker);
	while(GetIsObjectValid(oInvItem))
	{
		string sTag = GetTag(oInvItem);

		if(sTag == "g_a_clothes01")
		{
			DestroyObject(oInvItem);
			break;
		}

		oInvItem = GetNextItemInInventory(oLocker);
	}

	CancelPostDialogCharacterSwitch();
	NoClicksFor(0.6);
	DelayCommand(0.5, fLevelUp());
	ClearAllActions();
	
	DelayCommand(1.0, DestroyObject(GetObjectByTag("end_trask")));
	
	CreateObject( OBJECT_TYPE_CREATURE, "end_trask_corpse", Location(Vector(42.00, 112.00, 1.00), -110.00));
	CreateObject( OBJECT_TYPE_PLACEABLE, "end_trask_remains", Location(Vector(41.85, 111.85, -0.10), -110.00));
}