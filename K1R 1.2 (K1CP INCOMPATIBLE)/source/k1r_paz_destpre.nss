//void Pazaak();

void main()
{
//    SendMessageToPC(GetFirstPC(), "Hi...");
    if(GetGlobalNumber("k1r_inprelim") == 1) { return; }//SendMessageToPC(GetFirstPC(), "I didn't work"); }
    if(GetGlobalString("k1r_paz_winner") != "k1r_pazprelim_5a")
    {
//        SendMessageToPC(GetFirstPC(), "I fired: " + GetGlobalString("k1r_paz_winner"));
        SetGlobalFadeOut(0.0, 0.5);
        DelayCommand(0.5, SetGlobalFadeIn(1.5, 0.5));
        DelayCommand(0.5, DestroyObject(GetObjectByTag(GetGlobalString("k1r_paz_winner"))));
    }
}