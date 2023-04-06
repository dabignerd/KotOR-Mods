void main()
{
	object door1 = GetObjectByTag("end_door19");
	object door2 = GetObjectByTag("end_door07");
	object door3 = GetObjectByTag("end_door10");
	SetLocked(door1,FALSE);
	SetLocked(door2,TRUE);
	SetLocked(door3,FALSE);
	DelayCommand(1.5, AssignCommand(door1, ActionOpenDoor(door1)));
	DelayCommand(1.5, AssignCommand(door2, ActionCloseDoor(door2)));
}