void main()
{
    object oHurka = GetObjectByTag("k1r_hurka");

    if(GetIsObjectValid(oHurka) && GetIsDead(oHurka) == 0 && GetGlobalNumber("K1R_HURKA_STATE") < 1 && GetGlobalNumber("K1R_HURKA_STATE") > 2)
    {
        DestroyObject(GetObjectByTag("k1r_hurka"));
    }

    ExecuteScript("k_plev_40aa_en_o", OBJECT_SELF);
}