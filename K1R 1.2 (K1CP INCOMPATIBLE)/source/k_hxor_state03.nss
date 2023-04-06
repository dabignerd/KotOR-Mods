int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("K_XOR_AMBUSH") == 2);
    if (iResult)
        DelayCommand(2.0, SetGlobalNumber("K_XOR_AMBUSH", 3));

    return iResult;
}
