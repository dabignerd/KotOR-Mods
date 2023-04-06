int StartingConditional()
{
    if(GetSkillRank(SKILL_COMPUTER_USE, GetFirstPC()) >= 17) { return TRUE; }
    else return FALSE;
}