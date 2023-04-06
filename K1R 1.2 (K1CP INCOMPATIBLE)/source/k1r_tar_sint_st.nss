void main() {
	object object1 = GetObjectByTag("tar02_crtpty", 0);
	object object2 = GetObjectByTag("tar02_maintdrd", 0);
	if ((!GetLocalBoolean(object2, 58))) {
		SetLocalBoolean(object1, 10, 0);
	}
}

