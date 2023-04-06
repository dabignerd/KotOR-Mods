void main() {

	int jClass = GetClassByPosition(2, GetFirstPC());
	if ((jClass == 5)) {
		CreateItemOnObject("g_a_jedirobe03", GetFirstPC(), 1);
	}
	else if ((jClass == 4)) {
		CreateItemOnObject("g_a_jedirobe04", GetFirstPC(), 1);
	}
	else {
		CreateItemOnObject("g_a_jedirobe01", GetFirstPC(), 1);
	}
	
	ActionPauseConversation();
	ActionForceMoveToObject(GetObjectByTag("dan13_WP_zhar03", 0), 0, 1.0, 30.0);
	ActionResumeConversation();
	ActionForceMoveToObject(GetObjectByTag("dan13_WP_zhar02", 0), 0, 1.0, 30.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("dan13_WP_council", 0))));
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
	
}