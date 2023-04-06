#include "k_inc_man"
void main()
{
    if(GetIsPC(GetEnteringObject()))
    {
        if(GetGlobalNumber("K1R_Hukta_Ambush") == 1)
        {
            SetGlobalNumber("K1R_Hukta_Ambush", 2);
        }

        if(GetGlobalBoolean("K_MAN_SWOOP_POINT_04") == FALSE)
        {
            SetGlobalBoolean("K_MAN_SWOOP_POINT_04",TRUE);
        }
        UT_SpawnMessenger();
    }
}
