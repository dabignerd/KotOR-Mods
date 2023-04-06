// Globals
	object objectGLOB_1;

// Prototypes
void sub2(string stringParam1, location locationParam2);
void sub1(int intParam1, object objectParam2, string stringParam3);

void sub2(string stringParam1, location locationParam2) {
	object object1 = CreateObject(1, stringParam1, locationParam2, 0);
	objectGLOB_1 = object1;
}

void sub1(int intParam1, object objectParam2, string stringParam3) {
	location location1 = GetLocation(objectParam2);
	DestroyObject(objectParam2, 0.0, 0, 0.0);
	DelayCommand(1.5, sub2(stringParam3, location1));
	DelayCommand(1.75, AssignCommand(objectGLOB_1, JumpToLocation(location1)));
	DelayCommand(1.7, SetGlobalFadeIn(0.1, 3.0, 0.0, 0.0, 0.0));
}

void main() {
//	SendMessageToPC(GetFirstPC(), "Launched");
	int int2;
	int int3;
	int int4;
	string string1;
	object oRulan_jolee = GetObjectByTag("rulan_jolee", 0);
	location location1 = GetLocation(oRulan_jolee);

	int2 = Random(9);
	int3 = int2;

//	SendMessageToPC(GetFirstPC(), ("Random is: " + IntToString(int2)));
	switch (int2) {
		case 0:
			string1 = "rulan_bast";
			break;
		case 1:
			string1 = "rulan_cand";
			break;
		case 2:
			string1 = "rulan_carth";
			break;
		case 3:
			string1 = "rulan_hk";
			break;
		case 4:
			string1 = "rulan_jol";
			break;
		case 5:
			string1 = "rulan_juh";
			break;
		case 6:
			string1 = "rulan_mis";
			break;
		case 7:
			string1 = "rulan_t3";
			break;
		case 8:
			string1 = "rulan_zal";
			break;
		default:
			string1 = "rulan_jol";
			break;
	}
	object object5 = GetObjectByTag("rulan_jolee", 0);
	if ((int2 != 4)) {
		sub1(int2, object5, string1);
	}
       else
       {
       	DelayCommand(1.7, SetGlobalFadeIn(0.1, 3.0, 0.0, 0.0, 0.0));
       }
	SetGlobalNumber("KAS_RULAN_NPC", int3);
}