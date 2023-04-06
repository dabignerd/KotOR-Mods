int StartingConditional()
{
    if(GetGlobalNumber("k1r_paztourney") >= 5 &&
       GetLocalBoolean(GetLastSpeaker(), 39) != 0 &&
       GetTag(GetLastSpeaker()) != "<CUSTOM2015>" &&
       GetTag(GetLastSpeaker()) != "<CUSTOM2010>")
    {
            return TRUE;
    }
     return FALSE;
}