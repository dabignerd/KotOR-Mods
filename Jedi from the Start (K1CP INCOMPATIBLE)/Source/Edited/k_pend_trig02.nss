void main()
{
	object oPC = GetFirstPC();
	DelayCommand(0.2, AssignCommand(oPC, ActionStartConversation(GetFirstPC(), "end_carth01", 0, 0, 1, "", "", "", "", "", "")));
	DelayCommand(1.0, DestroyObject(GetObjectByTag("end_trig02")));
}