void main() {
	object object1 = GetFirstPC();
	object object2 = GetObjectByTag("Bastila", 0);
	object object3 = GetObjectByTag("Carth", 0);
	object object4 = GetObjectByTag("k1r_guard01", 0);
	object object5 = GetObjectByTag("k1r_guard02", 0);
	object object6 = GetObjectByTag("k1r_hurka", 0);
	if (GetIsDead(object5)) {
		SetCommandable(1, object6);
		CancelCombat(object2);
		CancelCombat(object3);
		CancelCombat(object1);
		AssignCommand(object1, ClearAllActions());
		AssignCommand(object3, ClearAllActions());
		AssignCommand(object2, ClearAllActions());
		DelayCommand(0.1, AssignCommand(object6, ClearAllActions()));
//		DelayCommand(0.2, AssignCommand(object6, ActionStartConversation(GetFirstPC(), "k1r_hurka", 0, 0, 1, "", "", "", "", "", "", 0)));
	}
}