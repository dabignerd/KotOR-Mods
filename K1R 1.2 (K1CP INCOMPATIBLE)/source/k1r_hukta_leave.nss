void main()
{
    DelayCommand(2.0, SetGlobalFadeOut(0.0, 0.5));
    DelayCommand(4.5, SetGlobalFadeIn(0.0, 0.5));

    SetGlobalNumber("K1R_Hukta_Ambush", 2);

    SetCommandable(TRUE, GetObjectByTag("man26_hukta"));
    AssignCommand(GetObjectByTag("man26_hukta"), ActionMoveToLocation(Location(Vector(-75.56607, 39.79547, 56.375), 0.0)));

    DelayCommand(5.0, DestroyObject(GetObjectByTag("man26_hukta")));
}