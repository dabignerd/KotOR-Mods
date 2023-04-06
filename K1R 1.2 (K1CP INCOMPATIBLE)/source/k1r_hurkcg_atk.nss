void main()
{
    object oPC = GetFirstPC();

    object oNPC = GetObjectByTag("k1r_guard01");
    object oNPC2 = GetObjectByTag("k1r_guard02");

    object oDoor = GetObjectByTag("k1r_meddoor");

    DestroyObject(GetObjectByTag("N_HurkSleep"));

    location lHurka=Location(Vector(68.45499,67.09,9.00), 122.03557); 	
    object oNPC3 = CreateObject(OBJECT_TYPE_CREATURE,"k1r_hurka",lHurka);

    SetCommandable(1, oNPC3);
    DelayCommand(0.2, AssignCommand(oNPC3, ActionPlayAnimation(ANIMATION_LOOPING_HORROR, 1.0, (-1.0))));
    DelayCommand(0.3, SetCommandable(FALSE, oNPC3));

    ChangeToStandardFaction(oNPC, STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(oNPC2, STANDARD_FACTION_HOSTILE_1);

    DelayCommand(1.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
    DelayCommand(2.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
    DelayCommand(3.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
    DelayCommand(4.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
    DelayCommand(5.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
    DelayCommand(6.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
    DelayCommand(7.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
    DelayCommand(8.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
    DelayCommand(9.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
    DelayCommand(10.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));

//    AssignCommand(oNPC, ActionAttack(oPC));
//    AssignCommand(oNPC2, ActionAttack(oPC));

    SetSoloMode(FALSE);
}
