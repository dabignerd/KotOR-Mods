//Feel free to use this script in any mod
//Feel free to modify this script but please ask me before / if you distribute it.

#include "k_inc_generic"
#include "k_inc_utility"


int RandomInt(int iMax=1, int iMin=0) //Created by bead-v.  Thank You
{
   int Malo = iMin;
   if(iMin>iMax) Malo=iMax;
   int iRandom = Malo + Random(abs(iMax-iMin));
   return iRandom;
}


void Populate(int Amount, int xMin, int xMax, int yMin, int yMax, string Tag)
{
   
   
   int AutoInc = 0;
   
   while(AutoInc<Amount)
   {
              AutoInc++;

		int x = RandomInt(xMax, xMin);
		int y = RandomInt(yMax, yMin);
              float z = 0.0;
		int Orient = Random(360);

              float x1 = IntToFloat(x);
              float y1 = IntToFloat(y);
              float Orient1 = IntToFloat(Orient);
		
		object NPC = CreateObject(OBJECT_TYPE_CREATURE, Tag, Location(Vector(x1,y1,z), Orient1));

              

		AssignCommand(NPC, ActionRandomWalk());
   }
}


//Created by TimBob12