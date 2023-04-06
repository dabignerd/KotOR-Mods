void main()
{
	object oPC = GetFirstPC();
	AddMultiClass(CLASS_TYPE_JEDICONSULAR,oPC);

	object oLocker = GetObjectByTag("end_locker01");

	CreateItemOnObject("jc_robe_app01", oLocker);
	CreateItemOnObject("g_w_lghtsbr03", oLocker);
}