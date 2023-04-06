void main()
{
	SetGlobalNumber("k1r_paz_tourney", (-2));
	int int1 = StringToInt(GetGlobalString("k1r_paz_pot"));//"<CUSTOM2023>");

//       SendMessageToPC(GetFirstPC(), "Credits: " + IntToString(int1));
	GiveGoldToCreature(GetFirstPC(), int1);
}