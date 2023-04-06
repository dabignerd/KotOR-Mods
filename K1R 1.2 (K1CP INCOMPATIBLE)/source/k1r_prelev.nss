//////////////////////////////////////////////////////////
//  k1r_prelev.nss
//  ==============
//  Will check if the player is in ebo_m40aa or not.
//  This is used in lev40_carth.dlg in the Override folder
//  to make sure both conversations can happen safely...
//
//////////////////////////////////////////////////////////

int StartingConditional()
{
    if(GetModuleFileName() == "ebo_m40aa") { return TRUE; }
    return FALSE;
}