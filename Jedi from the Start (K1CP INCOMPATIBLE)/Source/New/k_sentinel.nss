void main()
{
	object oPC = GetFirstPC();
	AddMultiClass(CLASS_TYPE_JEDISENTINEL,oPC);

	object oLocker = GetObjectByTag("end_locker01");

	CreateItemOnObject("jc_robe_app04", oLocker);
	CreateItemOnObject("g_w_lghtsbr04", oLocker);
}