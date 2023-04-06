void main()
{
    object oDroid = GetObjectByTag("kor37_bridge4");
    SetCommandable(1, oDroid);

    AssignCommand(oDroid, ActionEquipItem(CreateItemOnObject("g_i_drdshld010", oDroid), INVENTORY_SLOT_BELT));
}