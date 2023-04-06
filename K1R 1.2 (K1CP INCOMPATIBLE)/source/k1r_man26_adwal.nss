void main() {
    CreateItemOnObject("g_i_credits002", GetFirstPC(), 1);
    CreateItemOnObject("w_sithkey", GetFirstPC(), 1);
    GiveXPToCreature(GetFirstPC(), 300);
    if (GetGender(GetFirstPC()) == 0)
    {
        ExecuteScript("k1r_man26_dupro", OBJECT_SELF, 0xFFFFFFFF);
    }
    else
    {
        ExecuteScript("k1r_man26_vilpro", OBJECT_SELF, 0xFFFFFFFF);
    }
}