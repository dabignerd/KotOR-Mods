// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
int sub3(object objectParam1, int intParam2);
void sub2(object objectParam1);
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

int sub3(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void sub2(object objectParam1) {
	object oAreaObject = GetFirstObjectInArea(objectParam1, 1);
	while (GetIsObjectValid(oAreaObject)) {
		if (sub3(oAreaObject, intGLOB_10)) {
			DestroyObject(oAreaObject, 0.0, 1, 0.0);
		}
		oAreaObject = GetNextObjectInArea(objectParam1, 1);
	}
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oTar03_bekdoor = GetObjectByTag("tar03_bekdoor", 0);
	object oTar03_javydoor = GetObjectByTag("tar03_javydoor", 0);
	sub1("ENTERING AREA", 5, 5, 5.0);
	sub2(OBJECT_SELF);
	AssignCommand(oTar03_bekdoor, ActionCloseDoor(oTar03_bekdoor));
	AssignCommand(oTar03_javydoor, ActionCloseDoor(oTar03_javydoor));
	if (GetGlobalBoolean("TAR_VULKARBASE_OPEN")) {
		SetLocked(GetObjectByTag("tar03_blkdoor", 0), 0);
	}
	if (GetGlobalBoolean("Tar_KandonMission")) {
		object oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
		while (GetIsObjectValid(oAreaObject)) {
			if (((GetStandardFaction(oAreaObject) == 1) && (!IsObjectPartyMember(oAreaObject)))) {
				DestroyObject(oAreaObject, 0.0, 1, 0.0);
			}
			oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
		}
	}
	if (GetGlobalBoolean("TAR_BEKSHOSTILE")) {
		ChangeToStandardFaction(GetObjectByTag("tar03_hiddenbek", 0), 1);
		SetPlotFlag(GetObjectByTag("tar03_hiddenbek", 0), 0);
		SetMinOneHP(GetObjectByTag("tar03_hiddenbek", 0), 0);

		ChangeToStandardFaction(GetObjectByTag("hidbek031", 0), 1);
		SetPlotFlag(GetObjectByTag("hidbek031", 0), 0);
		SetMinOneHP(GetObjectByTag("hidbek031", 0), 0);

		ChangeToStandardFaction(GetObjectByTag("hidbek031", 1), 1);
		SetPlotFlag(GetObjectByTag("hidbek031", 1), 0);
		SetMinOneHP(GetObjectByTag("hidbek031", 1), 0);

		ChangeToStandardFaction(GetObjectByTag("hidbek031", 2), 1);
		SetPlotFlag(GetObjectByTag("hidbek031", 2), 0);
		SetMinOneHP(GetObjectByTag("hidbek031", 2), 0);

		ChangeToStandardFaction(GetObjectByTag("hidbek031", 3), 1);
		SetPlotFlag(GetObjectByTag("hidbek031", 3), 0);
		SetMinOneHP(GetObjectByTag("hidbek031", 3), 0);

		ChangeToStandardFaction(GetObjectByTag("hidbek032", 0), 1);
		SetPlotFlag(GetObjectByTag("hidbek032", 0), 0);
		SetMinOneHP(GetObjectByTag("hidbek032", 0), 0);

		ChangeToStandardFaction(GetObjectByTag("hidbek032", 1), 1);
		SetPlotFlag(GetObjectByTag("hidbek032", 1), 0);
		SetMinOneHP(GetObjectByTag("hidbek032", 1), 0);

		ChangeToStandardFaction(GetObjectByTag("hidbek032", 2), 1);
		SetPlotFlag(GetObjectByTag("hidbek032", 2), 0);
		SetMinOneHP(GetObjectByTag("hidbek032", 2), 0);

		ChangeToStandardFaction(GetObjectByTag("hidbek032", 3), 1);
		SetPlotFlag(GetObjectByTag("hidbek032", 3), 0);
		SetMinOneHP(GetObjectByTag("hidbek032", 3), 0);
	}
}