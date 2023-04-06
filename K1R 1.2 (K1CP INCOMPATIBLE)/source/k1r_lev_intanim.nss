void main()
{
     ActionPauseConversation();

  SetGlobalFadeIn(0.0, 3.5);

object oNPC = GetObjectByTag("k1r_guard01");

object oNPC2 = GetObjectByTag("k1r_guard02");

object oDoor = GetObjectByTag("k1r_meddoor");

SetLockOrientationInDialog(oNPC, TRUE);

SetLockOrientationInDialog(oNPC2, TRUE);

AssignCommand(oNPC2, ActionPlayAnimation(101, 1.0, (3.0)));

DelayCommand(4.0, AssignCommand(oNPC2, ActionPlayAnimation(100, 1.0, (3.0))));

DelayCommand(21.1, AssignCommand(oNPC, ActionPlayAnimation(11, 1.0, (3.0))));

DelayCommand(22.1, AssignCommand(oNPC, ActionPlayAnimation(102, 1.0, (3.0))));

DelayCommand(31.0, AssignCommand(oNPC2, ActionPlayAnimation(10, 1.0, (3.0))));

//DelayCommand(43.0, AssignCommand(oDoor, ActionOpenDoor(oDoor)));

ActionResumeConversation();

}
