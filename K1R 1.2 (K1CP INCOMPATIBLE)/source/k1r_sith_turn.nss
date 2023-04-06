void main()
{
     ActionPauseConversation();

object oNPC = GetObjectByTag("k1r_guard01");
object oDoor = GetObjectByTag("k1r_meddoor");
object oNPC2 = GetObjectByTag("k1r_guard02");

AssignCommand(oNPC, ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("Bastila")))));

AssignCommand(oNPC2, ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("Carth")))));
//AssignCommand(oDoor, ActionOpenDoor(oDoor));
ActionResumeConversation();

}
