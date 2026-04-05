try {
	if (popularity <= 0) {
		oShowDay.gameover = true;
	}
	else if (reputation <= 0) {
		oShowDay.gameover = true;
	}
	else if (scary <= 0) {
		oShowDay.gameover = true;
	}
	else if (scary >= 100) {
		oShowDay.gameover = true;
	}
}
catch (e) {
	show_debug_message("Error: " + string(e));
}