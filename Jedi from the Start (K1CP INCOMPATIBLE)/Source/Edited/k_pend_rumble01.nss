//:: k_pend_rumble01
/*
    Runs the rumbles/noises for the opening (animator) cutscene
*/
//:: Created By: Aidan Scanlan
//:: Copyright (c) 2002 Bioware Corp.
void main()
{
    PlayRumblePattern(15);

//Create Jedi from the Start Bench
	CreateObject( OBJECT_TYPE_PLACEABLE, "end_bench", Location(Vector(10.7, 27.1, -1.11), 180.00));
	
    DelayCommand(2.5,SoundObjectPlay(GetObjectByTag("end_openrum01")));
    DelayCommand(7.0,SoundObjectPlay(GetObjectByTag("end_openrum02")));
    DelayCommand(11.0,SoundObjectPlay(GetObjectByTag("end_openrum03")));
}