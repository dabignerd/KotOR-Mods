void main()
{
    object oDroid = GetObjectByTag("kor37_bridge3");
    SetCommandable(1, oDroid);

    AssignCommand(oDroid, ActionEquipItem(CreateItemOnObject("g_i_drdshld008", oDroid), INVENTORY_SLOT_BELT));
}