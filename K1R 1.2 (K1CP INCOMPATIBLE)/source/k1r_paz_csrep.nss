int StartingConditional()
{
    if(GetSkillRank(SKILL_REPAIR, GetFirstPC()) >= 17) { return TRUE; }
    else return FALSE;
}