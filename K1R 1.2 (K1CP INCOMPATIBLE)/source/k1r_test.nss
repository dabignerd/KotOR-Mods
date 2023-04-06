void main() {
	object object1 = OBJECT_SELF;
//	SendMessageToPC(GetFirstPC(), "It launched at least...");
	ExecuteScript("k_pkas_firstmor", object1, 0xFFFFFFFF);
	DelayCommand(1.5, SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0));
	DelayCommand(3.75, ExecuteScript("k1r_pkas_rulmor", object1, 0xFFFFFFFF));
}