void main()
{


     object oPC=GetFirstPC();

     object oNPC=GetObjectByTag("k1r_sithc");

  int nEvent = GetUserDefinedEventNumber();

int bRun=TRUE;

  if( 
        (nEvent == 1002) &&
        GetGlobalBoolean("K1R_SITHCHECK") == FALSE)
        {

  if(GetDistanceBetween(oNPC, oPC) <= 6.0){

    ActionDoCommand(SetCommandable(TRUE, oNPC));

  AssignCommand (oNPC, ActionForceMoveToObject(oPC, bRun));

  AssignCommand (oNPC, ActionStartConversation(GetFirstPC(), "tar05_sithpatrol", TRUE));
  
    } 
  }
}