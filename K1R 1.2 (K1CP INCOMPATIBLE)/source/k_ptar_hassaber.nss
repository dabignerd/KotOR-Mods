int StartingConditional()
{
	int int1 = GetLocalBoolean(GetObjectByTag("Bastilla03"), 10);

//       SendMessageToPC(GetFirstPC(), "Local Check: " + IntToString(int1));
       if(int1 > 0) { return FALSE; }
       return TRUE;
}