void main()
{
    object oPC = GetFirstPC();
    DelayCommand(0.1, AssignCommand(oPC, ClearAllActions()));
    DelayCommand(0.2, AssignCommand(oPC, ActionStartConversation(oPC, "k1r_cracorpse")));

}