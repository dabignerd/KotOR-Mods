void main()
{
    SetGlobalFadeOut(0.0, 0.5);
    DelayCommand(3.0, SetGlobalFadeIn(0.0, 0.5));

    CreateObject(OBJECT_TYPE_CREATURE, "lev_sithcommand",  Location(Vector(129.70, 99.23, -10.0), 280.0));

    CreateObject(OBJECT_TYPE_CREATURE, "lev_sithtroop001", Location(Vector(132.25, 97.73, -10.0), 270.0));
    CreateObject(OBJECT_TYPE_CREATURE, "lev_sithtroop002", Location(Vector(132.25, 96.73, -10.0), 270.0));
    CreateObject(OBJECT_TYPE_CREATURE, "lev_sithtroop002", Location(Vector(132.25, 95.73, -10.0), 270.0));
    CreateObject(OBJECT_TYPE_CREATURE, "lev_sithtroop002", Location(Vector(132.25, 94.73, -10.0), 270.0));

    CreateObject(OBJECT_TYPE_CREATURE, "lev_sithtroop002", Location(Vector(135.25, 96.73, -10.0), 270.0));
    CreateObject(OBJECT_TYPE_CREATURE, "lev_sithtroop002", Location(Vector(135.25, 97.73, -10.0), 270.0));
    CreateObject(OBJECT_TYPE_CREATURE, "lev_sithtroop002", Location(Vector(135.25, 95.73, -10.0), 270.0));
    CreateObject(OBJECT_TYPE_CREATURE, "lev_sithtroop002", Location(Vector(135.25, 94.73, -10.0), 270.0));

    DelayCommand(3.0, AssignCommand(GetObjectByTag("SithCommander"), ActionStartConversation(GetObjectByTag("SithTrooper1"), "lev40_cutscene", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
}