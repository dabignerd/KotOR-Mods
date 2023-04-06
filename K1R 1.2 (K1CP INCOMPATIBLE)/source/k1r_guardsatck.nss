void Action()
{
object oPC = GetFirstPC();

object oCarth = GetObjectByTag("Carth", 0);

object oBastila = GetObjectByTag("Bastila");

object oDoor = GetObjectByTag("lev40_bridgedoor");

object oRun1 = GetObjectByTag("k1r_sith1");

object oRun2 = GetObjectByTag("k1r_sith2");

object oRun3 = GetObjectByTag("k1r_sith3");

object oRun4 = GetObjectByTag("k1r_sith4");

object oComp = GetObjectByTag("k1r_comp");

object oSound = GetObjectByTag("lev40_alarm");

     SoundObjectSetVolume(oSound, 100);

vector wPosition=Vector(137.83, 56.48, 3.00); 
location lRun1=Location(wPosition, 177.86513);


vector xPosition=Vector(137.55, 53.48, 3.00); 
location lRun2=Location(xPosition,177.86513);


vector yPosition=Vector(139.98, 53.55, 3.00); 
location lRun3=Location(yPosition,177.86513);


vector zPosition=Vector(139.87, 56.21, 3.00); 
location lRun4=Location(zPosition,177.86513);


vector pPosition=Vector(147.56,54.49,3.00); //Future Carth
location lSith1=Location(pPosition, 177.86513);


vector hPosition=Vector(147.59,55.54,3.00); //Future Bastila
location lSith2=Location(hPosition,177.86513);

object oPest = GetObjectByTag("sithguard5");

vector gPosition=Vector(39.26, 14.72, 3.00); 
location lGuard=Location(gPosition,0.02106);

AssignCommand(oPest, JumpToLocation(lGuard));

object oSith1 = CreateObject(OBJECT_TYPE_CREATURE,"k1r_guard01",lSith1);

object oSith2 = CreateObject(OBJECT_TYPE_CREATURE,"k1r_guard02",lSith2);

object oSith5 = GetObjectByTag("sithguard3");
object oSith6 = GetObjectByTag("sithguard4");
object oSith7 = GetObjectByTag("sithguard5");

 ChangeToStandardFaction(oSith5, STANDARD_FACTION_HOSTILE_1);
 ChangeToStandardFaction(oSith6, STANDARD_FACTION_HOSTILE_1);
 ChangeToStandardFaction(oSith7, STANDARD_FACTION_HOSTILE_1);

    ChangeToStandardFaction(GetObjectByTag("k1r_hurka"), STANDARD_FACTION_HOSTILE_1);
    AssignCommand(GetObjectByTag("k1r_hurka"), ActionAttack(oPC));

SetSoloMode(FALSE);

SetLocked(oDoor, TRUE);

SetAreaUnescapable(TRUE);

DelayCommand(0.99, SetLocked(oDoor, FALSE));

DelayCommand(1.0, AssignCommand(oDoor, ActionOpenDoor(oDoor)));

int bRun=TRUE;

AssignCommand(oCarth, ClearAllEffects());

DelayCommand(1.1, AssignCommand(oSith1, ActionForceMoveToObject(oRun1,bRun)));

DelayCommand(1.6, AssignCommand(oSith2, ActionForceMoveToObject(oRun2,bRun)));

DelayCommand(3.5,  ChangeToStandardFaction(oSith1, STANDARD_FACTION_HOSTILE_1));

DelayCommand(3.5,  ChangeToStandardFaction(oSith2, STANDARD_FACTION_HOSTILE_1));

  DelayCommand(3.6, AssignCommand(oSith1, ActionAttack(oPC)));

  DelayCommand(3.6, AssignCommand(oSith2, ActionAttack(oPC)));

DelayCommand(4.5, AssignCommand(oDoor, ActionCloseDoor(oDoor)));

DelayCommand(5.0, SetAreaUnescapable(FALSE));

DelayCommand(4.6, SetLocked(oDoor, TRUE));

    SetLocalBoolean(oComp, 40, TRUE);

SetGlobalNumber("K1R_HURKA_STATE", -1);
  
}

void main()
{
    DelayCommand(1.0, Action());
}