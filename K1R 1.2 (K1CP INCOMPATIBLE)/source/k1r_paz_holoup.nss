// Prototypes
void sub1(string stringParam1);

void sub1(string stringParam1) {
	CreateObject(64, stringParam1, Location(Vector((-37.88), 4.9, 59.0), 270.0), 1);
	CreateObject(64, stringParam1, Location(Vector((-37.88), 4.9, 59.0), 270.0), 1);
	CreateObject(64, stringParam1, Location(Vector((-37.88), 4.9, 59.0), 270.0), 1);
}

void main() {
	int int1;
	if ((GetGlobalString("k1r_paz_winner") == "Ceeiia")) {
		int1 = 1;
		SetGlobalNumber("K1R_Paz_Beaten", 1);
	}
	else {
		if ((GetGlobalString("k1r_paz_winner") == "Sykallin")) {
			int1 = 2;
			SetGlobalNumber("K1R_Paz_Beaten", 2);
		}
		else {
			if ((GetGlobalString("k1r_paz_winner") == "Irog")) {
				int1 = 3;
				SetGlobalNumber("K1R_Paz_Beaten", 3);
			}
			else {
				if ((GetGlobalString("k1r_paz_winner") == "CS-32")) {
					int1 = 4;
					SetGlobalNumber("K1R_Paz_Beaten", 4);
				}
				else {
					if ((GetGlobalString("k1r_paz_winner") == "Skirata")) {
						int1 = 5;
						SetGlobalNumber("K1R_Paz_Beaten", 5);
					}
				}
			}
		}
	}
	string string6 = (("paz_holo_" + IntToString(int1)) + "bad");
	DestroyObject(GetObjectByTag("paz_holo_base", 0), 0.0, 0, 0.0);
	DelayCommand(0.1, DestroyObject(GetObjectByTag("paz_holo_base", 0), 0.0, 0, 0.0));
	DelayCommand(0.25, DestroyObject(GetObjectByTag("paz_holo_base", 0), 0.0, 0, 0.0));
	DelayCommand(0.5, DestroyObject(GetObjectByTag("paz_holo_base", 0), 0.0, 0, 0.0));
	DestroyObject(GetObjectByTag("paz_holo_1bad", 0), 0.0, 0, 0.0);
	DelayCommand(0.1, DestroyObject(GetObjectByTag("paz_holo_1bad", 0), 0.0, 0, 0.0));
	DelayCommand(0.25, DestroyObject(GetObjectByTag("paz_holo_1bad", 0), 0.0, 0, 0.0));
	DelayCommand(0.5, DestroyObject(GetObjectByTag("paz_holo_1bad", 0), 0.0, 0, 0.0));
	DestroyObject(GetObjectByTag("paz_holo_2bad", 0), 0.0, 0, 0.0);
	DelayCommand(0.1, DestroyObject(GetObjectByTag("paz_holo_2bad", 0), 0.0, 0, 0.0));
	DelayCommand(0.25, DestroyObject(GetObjectByTag("paz_holo_2bad", 0), 0.0, 0, 0.0));
	DelayCommand(0.5, DestroyObject(GetObjectByTag("paz_holo_2bad", 0), 0.0, 0, 0.0));
	DestroyObject(GetObjectByTag("paz_holo_3bad", 0), 0.0, 0, 0.0);
	DelayCommand(0.1, DestroyObject(GetObjectByTag("paz_holo_3bad", 0), 0.0, 0, 0.0));
	DelayCommand(0.25, DestroyObject(GetObjectByTag("paz_holo_3bad", 0), 0.0, 0, 0.0));
	DelayCommand(0.5, DestroyObject(GetObjectByTag("paz_holo_3bad", 0), 0.0, 0, 0.0));
	DestroyObject(GetObjectByTag("paz_holo_4bad", 0), 0.0, 0, 0.0);
	DelayCommand(0.1, DestroyObject(GetObjectByTag("paz_holo_4bad", 0), 0.0, 0, 0.0));
	DelayCommand(0.25, DestroyObject(GetObjectByTag("paz_holo_4bad", 0), 0.0, 0, 0.0));
	DelayCommand(0.5, DestroyObject(GetObjectByTag("paz_holo_4bad", 0), 0.0, 0, 0.0));
	DestroyObject(GetObjectByTag("paz_holo_5bad", 0), 0.0, 0, 0.0);
	DelayCommand(0.1, DestroyObject(GetObjectByTag("paz_holo_5bad", 0), 0.0, 0, 0.0));
	DelayCommand(0.25, DestroyObject(GetObjectByTag("paz_holo_5bad", 0), 0.0, 0, 0.0));
	DelayCommand(0.5, DestroyObject(GetObjectByTag("paz_holo_5bad", 0), 0.0, 0, 0.0));
	DelayCommand(0.5, sub1(string6));
}

