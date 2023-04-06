void main()
{ 	
vector gPosition=Vector(88.43,80.31,7.63);
location lGuard1=Location(gPosition, 180.0);

vector dPosition=Vector(88.46,78.31,7.63);
location lGuard2=Location(dPosition, 180.0);

vector cPosition=Vector(61.31,66.00,9.8);
location lData=Location(cPosition, 359.69489);

vector lPosition=Vector(60.35,65.23,9.8);
location lParts=Location(lPosition, 0.034);

vector zPosition=Vector(61.45,65.99,9.8);
location lPazaak=Location(zPosition, 126.212);

//vector yPosition=Vector(66.23,62.06,9.0);
//location lPouch=Location(yPosition, 218.387);


//object oPouch = CreateObject(OBJECT_TYPE_PLACEABLE,"k1r_cut_pouch",lPouch);

object oPazaak = CreateObject(OBJECT_TYPE_PLACEABLE,"k1r_cut_pazaak",lPazaak);

object oParts = CreateObject(OBJECT_TYPE_PLACEABLE,"k1r_cut_parts",lParts);

object oPad = CreateObject(OBJECT_TYPE_PLACEABLE,"k1r_cut_pad",lData);

object oGuard1 = CreateObject(OBJECT_TYPE_CREATURE,"k1r_guard01",lGuard1);

object oGuard2 = CreateObject(OBJECT_TYPE_CREATURE,"k1r_guard02",lGuard2);


}