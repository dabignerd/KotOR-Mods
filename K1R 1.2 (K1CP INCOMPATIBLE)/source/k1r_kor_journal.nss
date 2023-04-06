void main()
{
    int iLashowe = GetJournalEntry("kor35_aidlashowe");
    if(iLashowe != 0 && iLashowe != 35 && iLashowe != 50 && iLashowe != 55 && iLashowe != 60) { RemoveJournalQuestEntry("kor35_aidlashowe"); }

    int iKel = GetJournalEntry("kor25_doubtsith");
    if(iKel != 0 && iKel <=10) { RemoveJournalQuestEntry("kor25_doubtsith"); }

    int iRenegade = GetJournalEntry("kor35_renegadesith");
    if(iRenegade != 0 && iRenegade < 40) { RemoveJournalQuestEntry("kor35_renegadesith"); }

    int iRogue = GetJournalEntry("kor38_roguedroid");
    if(iRogue != 0 && iRogue != 20 && iRogue < 40) { RemoveJournalQuestEntry("kor38_roguedroid"); }

    int iCode = GetJournalEntry("Category000");
    if(iCode != 0 && iCode < 20) { RemoveJournalQuestEntry("Category000"); }

    int iHermit = GetJournalEntry("kor38_hermit");
    if(iHermit != 0 && iHermit < 40) { RemoveJournalQuestEntry("kor38_hermit"); }

    int iMando = GetJournalEntry("kor35_mandalorian");
    if(iMando != 0 && iMando != 20 && iMando < 50) { RemoveJournalQuestEntry("kor35_mandalorian"); }

    int iAjunta = GetJournalEntry("kor37_ajuntapall");
    if(iAjunta != 0 && iAjunta < 20) { RemoveJournalQuestEntry("kor37_ajuntapall"); }
}