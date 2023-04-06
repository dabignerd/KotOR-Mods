void main()
{
    CreateObject(OBJECT_TYPE_PLACEABLE, "k1r_pazinvis", GetLocation(GetObjectByTag("man26ab_door04")));
    DelayCommand(0.5, AssignCommand(GetObjectByTag("k1r_pazinvis"), ActionStartConversation(GetFirstPC())));
}