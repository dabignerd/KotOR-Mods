//:: k_pdan_juhani18
/*
    Checks to see if DAN_JUHANI_PLOT is 1, meaning that
    the quest to cleanse the grove has been given, but
    not resolved.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    if(GetGlobalBoolean("K1R_CRA_CRYST") == 1) { return FALSE; }

    iResult = (GetGlobalNumber("DAN_JUHANI_PLOT") == 1);
    if(iResult)
    {
        SetGlobalBoolean("K1R_CRA_CRYST", 1);
    }

    return iResult;
}

