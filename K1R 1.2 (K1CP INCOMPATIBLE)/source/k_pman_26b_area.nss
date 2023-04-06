void main()
{
//    SendMessageToPC(GetFirstPC(), "Script Fired!");
    if(GetIsPC(GetEnteringObject()))
    {
//        SendMessageToPC(GetFirstPC(), "PC Found!");
        if(GetGlobalNumber("K1R_Hukta_Ambush") >= 1)
        {
//            SendMessageToPC(GetFirstPC(), "Hukta ready!");
            if(GetIsObjectValid(GetObjectByTag("man26_hukta")) == 1)
            {
//                SendMessageToPC(GetFirstPC(), "Hukta destroyed!");
                SetCommandable(TRUE, GetObjectByTag("man26_hukta"));
                AssignCommand(GetObjectByTag("man26_hukta"), SetIsDestroyable(TRUE, FALSE, FALSE));
                DestroyObject(GetObjectByTag("man26_hukta"));
            }
        }

        ExecuteScript("k_pman_26b_area_", OBJECT_SELF);
    }
}