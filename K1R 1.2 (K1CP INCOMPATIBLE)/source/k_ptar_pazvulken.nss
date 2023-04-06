void main()
{
    if(GetJournalEntry("k_pazaak") != 0) { AddJournalQuestEntry("k_pazaak", 99); }
    AssignCommand(GetObjectByTag("VulkarMech03"), ActionStartConversation(GetFirstPC(), "tar10_vulkmech03", 0, 0, 0));
}

