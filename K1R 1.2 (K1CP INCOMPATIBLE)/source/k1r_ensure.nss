void main()
{

        object oPC=GetFirstPC();

	object oCarth = GetObjectByTag("Carth");

	object oBastila = GetObjectByTag("Bastila");

ActionPauseConversation();

location lPC      = Location(Vector(67.30, 68.52, 9.00), 320.32983);
location lBastila = Location(Vector(66.68, 71.08, 9.00), 320.32983);
location lCarth   = Location(Vector(65.19, 69.07, 9.00), 320.32983);

AssignCommand(oPC, JumpToLocation(lPC));
DelayCommand(0.1, AssignCommand(oPC, SetFacingPoint(GetPosition(GetObjectByTag("k1r_hurka")))));

AssignCommand(oBastila, JumpToLocation(lBastila));
DelayCommand(0.1, AssignCommand(oBastila, SetFacingPoint(GetPosition(GetObjectByTag("k1r_hurka")))));

AssignCommand(oCarth,   JumpToLocation(lCarth));
DelayCommand(0.1, AssignCommand(oCarth, SetFacingPoint(GetPosition(GetObjectByTag("k1r_hurka")))));

ActionResumeConversation();

}