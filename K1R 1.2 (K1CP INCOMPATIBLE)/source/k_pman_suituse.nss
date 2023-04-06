void main() {
	string string1 = "man28_envirosuit";
	object object1 = GetLastUsedBy();
	if ((IsObjectPartyMember(object1) || GetIsPC(object1)) && GetPlotFlag(OBJECT_SELF) == 1) {
		CreateItemOnObject(string1, GetFirstPC(), 3);
		AwardStealthXP(GetFirstPC());
		SetPlotFlag(OBJECT_SELF, 0);
	}
}