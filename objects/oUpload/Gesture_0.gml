
if !disabled and oThumbnail.frontIdx != -1 and oThumbnail.backIdx != -1 {
	with (iStatCalculator) {
	
		iStats.popularity += addPopularity;
		iStats.reputation += addReputation;
		iStats.scary += addScary;

		addScary1 = 0;
		addReputation1 = 0;
		addPopularity1 = 0;
		addScary2 = 0;
		addReputation2 = 0;
		addPopularity2 = 0;
	}

	with(iStats){
		subscribers += (popularity + reputation + scary) * 347;
		title1 = "";
		title2 = "";
	}

	with(oThumbnail) {
		frontIdx = -1;
		backIdx = -1;
	}

	with(oShowDay) {
		start = true;
		day += 1;
		if oShowDay.gameover == false {
			if (day == 2) audio_play_sound(seTwo, 10, false);
			else if (day == 3) audio_play_sound(seThree, 10, false);
			else if (day == 4) audio_play_sound(seFour, 10, false);
			else if (day == 5) audio_play_sound(seFive, 10, false);
			else if (day == 6) audio_play_sound(seSix, 10, false);
			else if (day == 7) audio_play_sound(seSeven, 10, false);
			else if (day == 8) audio_play_sound(seEight, 10, false);
			else if (day == 9) audio_play_sound(seNine, 10, false);
			else if (day == 10) audio_play_sound(seTen, 10, false);
			else if (day == 11) audio_play_sound(seEleven, 10, false);
		}
	}
	
	with (iCardControl) {
		next = 0;
	}
	
	with (oCommentOfTheDay) {
		reset = true
	}
}