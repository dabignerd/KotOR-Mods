int HaveDeck();

int StartingConditional()
{
    if(HaveDeck() == 1) { return TRUE; }
    return FALSE;
}

int HaveDeck()
{
    object oItem = GetFirstItemInInventory(GetFirstPC());
    if(GetTag(oItem) == "g_i_pazdeck") { return 1; }
    else
    {
        oItem = GetNextItemInInventory(GetFirstPC());
        while(GetIsObjectValid(oItem))
        {
            if(GetTag(oItem) == "g_i_pazdeck") { return 1; }
            else { oItem = GetNextItemInInventory(GetFirstPC()); }
        }
        return 0;
     }
}