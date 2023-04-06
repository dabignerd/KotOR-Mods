void main()
{
       object oEntering = GetEnteringObject();

	location location1 = GetLocation(GetObjectByTag("kas_xor1_spawn", 0));
	location location3 = GetLocation(GetObjectByTag("kas_xor2_spawn", 0));
	location location5 = GetLocation(GetObjectByTag("kas_xor3_spawn", 0));

	int nAmbush = GetGlobalNumber("K1R_Hukta_Ambush");

 	if(nAmbush == 2 && GetIsPC(oEntering))
	{
		SetGlobalNumber("K1R_Hukta_Ambush", 3);
              
		CreateObject(1, "k1r_huk1", location1, 0);
		CreateObject(1, "k1r_huk2", location3, 0);
		CreateObject(1, "k1r_huk3", location5, 0);
 	}
       else
       {
           ExecuteScript("k_pman_duncan02_", oEntering);
       }
}
