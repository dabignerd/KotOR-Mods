void main()
{
    object oItem = GetModuleItemAcquired();
    string sTag = GetTag(oItem);

    if(sTag == "G_W_DBLSBR004")         { SetLocalBoolean(GetObjectByTag("Bastilla03"), 10, 1); }
    else if(sTag == "tar03_brejikglov") { SetLocalBoolean(GetObjectByTag("Bastilla03"), 10, 1); }
    else if(sTag == "tar03_brejikbelt") { SetLocalBoolean(GetObjectByTag("Bastilla03"), 10, 1); }
    else if(sTag == "tar03_brejikband") { SetLocalBoolean(GetObjectByTag("Bastilla03"), 10, 1); }

//    SendMessageToPC(GetFirstPC(), "Local Set: " + IntToString(GetLocalBoolean(GetObjectByTag("Bastilla03"), 10)));
}