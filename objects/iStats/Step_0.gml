try {
	if (popularity <= 0) {
		oShowDay.gameover = true;
		oGameOver.sprite_index = sMcdonalds;
	}
	else if (reputation <= 0) {
		oShowDay.gameover = true;
		oGameOver.sprite_index = sApology;
	}
	else if (scary <= 0) {
		oShowDay.gameover = sDisstrack;
	}
	else if (scary >= 100) {
		oShowDay.gameover = sLifeRuined;
	}
}
catch (e) {
	show_debug_message("Error: " + string(e));
}