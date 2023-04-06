////////////////////////////////
//  k1r_obconv.nss
//  ==============
//  Designed as a workaround
//  for the Ajunta Pall obelisk
//  to avoid breaks, hopefully.
//
////////////////////////////////

void main()
{
    AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "k1r_obconv"));
}