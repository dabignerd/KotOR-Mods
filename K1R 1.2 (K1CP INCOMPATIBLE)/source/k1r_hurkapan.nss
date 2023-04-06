void main()
{ 
    object oNPC    = GetObjectByTag("k1r_hurka");
    object oParty  = GetObjectByTag("Carth");
    object oParty2 = GetObjectByTag("Bastila");

    AssignCommand(oParty,  ClearAllActions());
    AssignCommand(oParty2, ClearAllActions());
    AssignCommand(oNPC, ActionForceMoveToLocation (Location(Vector(138.5, 57.49, 3.00), 0.0)));

    DelayCommand(4.0, AssignCommand(oNPC, ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("k1r_comp"))))));
}