void main()
{


     object oPC=GetFirstPC();

     object oNPC=GetObjectByTag("k1r_sithc");

     object oNPC2=GetObjectByTag("tar05_sithpat1");

     object oNPC3=GetObjectByTag("tar05_sithpat2");

int bRun=FALSE;

vector pPosition=Vector(275.41,76.11,21.94);
location lPC=Location(pPosition,267.53439);

AssignCommand(oPC, JumpToLocation(lPC));

DelayCommand(1.0, AssignCommand(oPC, ActionForceMoveToLocation (Location(Vector(275.55, 71.71, 21.78), 262.63376))));


SetLockOrientationInDialog(oNPC, TRUE);

DelayCommand(0.1, SetLockOrientationInDialog(oNPC, FALSE));

DelayCommand(0.1, AssignCommand(oNPC, ActionDoCommand(SetFacingPoint(GetPosition(oPC)))));

DelayCommand(0.1, AssignCommand(oNPC2, ActionDoCommand(SetFacingPoint(GetPosition(oPC)))));

DelayCommand(0.1, AssignCommand(oNPC3, ActionDoCommand(SetFacingPoint(GetPosition(oPC)))));

AssignCommand(oNPC, ClearAllActions());

AssignCommand(oNPC, ActionStartConversation(oPC, "tar05_sithpatrol", TRUE));
  
}