void main()
{
    int iRand = Random(3) + 1;
    switch(iRand)
    {
    case 1: { CreateItemOnObject("g_i_pazcard_013", GetFirstPC()); break; }
    case 2: { CreateItemOnObject("g_i_pazcard_014", GetFirstPC()); break; }
    case 3: { CreateItemOnObject("g_i_pazcard_015", GetFirstPC()); break; }
    }
}