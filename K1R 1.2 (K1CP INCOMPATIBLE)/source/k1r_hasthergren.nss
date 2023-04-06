/////////////////////////////////////////
// k1r_hasthergren.nss
// ===================
// Checks for a thermal gren in inventory
//
/////////////////////////////////////////

int StartingConditional()
{
// "G_w_StunGren01"
// "g_w_adhsvgren001"
// "g_w_fraggren01"
// "G_w_SonicGren01"
// "G_w_ThermlDet01"
// "G_W_FIREGREN001"

// "G_I_TRAPKIT001"
// "G_I_TRAPKIT002"
// "G_I_TRAPKIT003"
// "G_I_TRAPKIT004"
// "G_I_TRAPKIT005"
// "G_I_TRAPKIT006"
// "G_I_TRAPKIT007"
// "G_I_TRAPKIT008"
// "G_I_TRAPKIT009"
// "G_I_TRAPKIT010"
// "G_I_TRAPKIT011"
// "G_I_TRAPKIT011"

    return GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "G_w_ThermlDet01"));
}