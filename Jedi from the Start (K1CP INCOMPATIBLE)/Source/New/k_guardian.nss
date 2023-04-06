void main()
{
	object oPC = GetFirstPC();
	AddMultiClass(CLASS_TYPE_JEDIGUARDIAN,oPC);

	object oLocker = GetObjectByTag("end_locker01");

	CreateItemOnObject("jc_robe_app03", oLocker);
	CreateItemOnObject("g_w_lghtsbr01", oLocker);
}