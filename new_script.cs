using Godot;
using System;

public class new_script : Node
{
	private int a = 2;
	private string b = "text";
	
	public bool cacafuti() {
		for (int i = 0; i < 50000; i++) {
			if (a == 2) {
				if (b == "text") {
					return true;
				} else {
					return false;
				}
			}
		}
		return true;
	}
}
