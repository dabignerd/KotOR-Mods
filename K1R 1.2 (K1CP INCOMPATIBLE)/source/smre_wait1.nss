void main() {
	ActionPauseConversation();
	ExecuteScript("k_pman_planet43", OBJECT_SELF, 0xFFFFFFFF);
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	DelayCommand(4.0, ActionResumeConversation());
//       DelayCommand(4.5, SetGlobalFadeIn(0.0, 3.0));
}
