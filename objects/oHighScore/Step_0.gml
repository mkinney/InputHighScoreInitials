if (keyboard_check_pressed(vk_left)) {
	editplace--;
}
if (keyboard_check_pressed(vk_right)) {
	editplace++;
}
editplace = clamp(editplace, 0, 2);

if (keyboard_check_pressed(vk_up)) {
	if editplace == 0 {
		initial1++;
	}
	if editplace == 1 {
		initial2++;
	}
	if editplace == 2 {
		initial3++;
	}
}

if (keyboard_check_pressed(vk_down)) {
	if editplace == 0 {
		initial1--;
	}
	if editplace == 1 {
		initial2--;
	}
	if editplace == 2 {
		initial3--;
	}
}

// initial1
if (initial1 > array_length_1d(letters) - 1) {
	initial1 = 0;
}
if (initial1 < 0) {
	initial1 = array_length_1d(letters) - 1;
}

// initial2
if (initial2 > array_length_1d(letters) - 1) {
	initial2 = 0;
}
if (initial2 < 0) {
	initial2 = array_length_1d(letters) - 1; 
}

// inital3
if (initial3 > array_length_1d(letters) - 1) {
	initial3 = 0;
}
if (initial3 < 0) {
	initial3 = array_length_1d(letters) - 1;
}

initials = string(letters[initial1]) + string(letters[initial2]) + string(letters[initial3]);
