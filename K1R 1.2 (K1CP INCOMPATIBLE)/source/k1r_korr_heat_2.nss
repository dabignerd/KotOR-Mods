void main()
{
    object oDroid = GetObjectByTag("kor37_bridge2");
    SetCommandable(1, oDroid);

    AssignCommand(oDroid, ActionEquipItem(CreateItemOnObject("g_i_drdshld009", oDroid), INVENTORY_SLOT_BELT));
}