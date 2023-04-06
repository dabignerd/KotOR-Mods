///////////////////////////////////
//  k1r_takegren.nss
//  ================
//  Take the grenade after you blow
//  the obelisk in Ajunta's tomb.
//
///////////////////////////////////

void main()
{
    string sTag;

    switch(GetGlobalNumber("K1R_PKOR_GREN"))
    {
        case 1: { sTag = "g_w_adhsvgren001"; break; }
        case 2: { sTag = "G_w_StunGren01";   break; }
        case 3: { sTag = "g_w_fraggren01";   break; }
        case 4: { sTag = "G_W_FIREGREN001";  break; }
        case 5: { sTag = "G_w_SonicGren01";  break; }
        case 6: { sTag = "G_w_ThermlDet01";  break; }
    }

// "G_w_StunGren01"
// "g_w_adhsvgren001"
// "g_w_fraggren01"
// "G_w_SonicGren01"
// "G_w_ThermlDet01"
// "G_W_FIREGREN001"

    object oItem = GetItemPossessedBy(GetFirstPC(), sTag);
    int iStack   = GetNumStackedItems(oItem);

    if(iStack == 1)
    {
        ActionTakeItem(oItem, GetFirstPC());
    }
    else
    {
        SetItemStackSize(oItem, iStack - 1);
    }
}