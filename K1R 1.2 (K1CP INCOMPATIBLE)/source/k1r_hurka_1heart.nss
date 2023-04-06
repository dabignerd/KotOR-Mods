//:: k_def_heartbt01
/*
    Default heartbeat script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

void FACE(object oObject);

void main()
{
    if(GetGlobalNumber("K1R_Hurka_stand") == 0)
    {
        DelayCommand(0.5, FACE(OBJECT_SELF));
        DelayCommand(1.0, FACE(OBJECT_SELF));
        DelayCommand(1.5, FACE(OBJECT_SELF));
        DelayCommand(2.0, FACE(OBJECT_SELF));
        DelayCommand(2.5, FACE(OBJECT_SELF));
        DelayCommand(3.0, FACE(OBJECT_SELF));
        DelayCommand(3.5, FACE(OBJECT_SELF));
        DelayCommand(4.0, FACE(OBJECT_SELF));
        DelayCommand(4.5, FACE(OBJECT_SELF));
        DelayCommand(5.0, FACE(OBJECT_SELF));
        DelayCommand(5.5, FACE(OBJECT_SELF));
    }
    else if(GetGlobalNumber("K1R_Hurka_stand") == 1)
    {
        AssignCommand(OBJECT_SELF, ActionPlayAnimation(18, 1.0, -1.0));
    }
    else
    {

    }
}

void FACE(object oObject)
{
    AssignCommand(oObject, SetFacing(90.0));
    AssignCommand(oObject, ActionPlayAnimation(ANIMATION_LOOPING_MEDITATE, 1.0, 0.5));
}